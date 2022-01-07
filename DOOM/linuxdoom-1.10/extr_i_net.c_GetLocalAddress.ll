; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_net.c_GetLocalAddress.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_net.c_GetLocalAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64* }

@.str = private unnamed_addr constant [40 x i8] c"GetLocalAddress : gethostname: errno %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"GetLocalAddress : gethostbyname: couldn't get local host\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetLocalAddress() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %5 = call i32 @gethostname(i8* %4, i32 1024)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %13 = call %struct.hostent* @gethostbyname(i8* %12)
  store %struct.hostent* %13, %struct.hostent** %2, align 8
  %14 = load %struct.hostent*, %struct.hostent** %2, align 8
  %15 = icmp ne %struct.hostent* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load %struct.hostent*, %struct.hostent** %2, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @I_Error(i8*, ...) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

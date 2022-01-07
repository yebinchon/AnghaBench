; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib586.c_my_unlock.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib586.c_my_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userdata = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ssl_session\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"unlock: no such data: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unlock: %-6s [%s]: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @my_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_unlock(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.userdata*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.userdata*
  store %struct.userdata* %10, %struct.userdata** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %17 [
    i32 129, label %13
    i32 130, label %14
    i32 131, label %15
    i32 128, label %16
  ]

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %21

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %21

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %21

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  br label %34

21:                                               ; preds = %16, %15, %14, %13
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.userdata*, %struct.userdata** %8, align 8
  %24 = getelementptr inbounds %struct.userdata, %struct.userdata* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.userdata*, %struct.userdata** %8, align 8
  %27 = getelementptr inbounds %struct.userdata, %struct.userdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %22, i8* %25, i32 %28)
  %30 = load %struct.userdata*, %struct.userdata** %8, align 8
  %31 = getelementptr inbounds %struct.userdata, %struct.userdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_FreeProbe.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_FreeProbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@probe_buf = common dso_local global %struct.TYPE_7__* null, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"@probe_log\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"@probe_log/%04u%02u%02u_%02u%02u%02u.log\00", align 1
@probe_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeProbe() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @probe_buf, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 1
  br i1 %7, label %8, label %32

8:                                                ; preds = %0
  %9 = load i32, i32* @MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = call i32 @MakeDirEx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @LocalTime(%struct.TYPE_6__* %1)
  %15 = trunc i64 %10 to i32
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snprintf(i8* %12, i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @probe_buf, align 8
  %30 = call i32 @DumpBuf(%struct.TYPE_7__* %29, i8* %12)
  %31 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %31)
  br label %32

32:                                               ; preds = %8, %0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @probe_buf, align 8
  %34 = call i32 @FreeBuf(%struct.TYPE_7__* %33)
  %35 = load i32, i32* @probe_lock, align 4
  %36 = call i32 @DeleteLock(i32 %35)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MakeDirEx(i8*) #2

declare dso_local i32 @LocalTime(%struct.TYPE_6__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @DumpBuf(%struct.TYPE_7__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_7__*) #2

declare dso_local i32 @DeleteLock(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

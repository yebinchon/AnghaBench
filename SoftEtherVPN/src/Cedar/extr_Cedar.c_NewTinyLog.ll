; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_NewTinyLog.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_NewTinyLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@TINY_LOG_DIRNAME = common dso_local global i32 0, align 4
@TINY_LOG_FILENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @NewTinyLog() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = call i32 @LocalTime(%struct.TYPE_7__* %3)
  %10 = load i32, i32* @TINY_LOG_DIRNAME, align 4
  %11 = call i32 @MakeDir(i32 %10)
  %12 = trunc i64 %6 to i32
  %13 = load i32, i32* @TINY_LOG_FILENAME, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @Format(i8* %8, i32 %12, i32 %13, i32 %15, i32 %17, i32 %19, i32 %21, i32 %23, i32 %25)
  %27 = call %struct.TYPE_6__* @ZeroMalloc(i32 12)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @StrCpy(i32 %30, i32 4, i8* %8)
  %32 = call i32 @FileCreate(i8* %8)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 (...) @NewLock()
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %39)
  ret %struct.TYPE_6__* %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LocalTime(%struct.TYPE_7__*) #2

declare dso_local i32 @MakeDir(i32) #2

declare dso_local i32 @Format(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #2

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

declare dso_local i32 @FileCreate(i8*) #2

declare dso_local i32 @NewLock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

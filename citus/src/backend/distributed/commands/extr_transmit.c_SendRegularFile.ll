; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_transmit.c_SendRegularFile.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_transmit.c_SendRegularFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@PG_WAIT_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendRegularFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 32768, i32* %5, align 4
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @PG_BINARY, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @FileOpenForTransmit(i8* %13, i32 %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @FileCompatFromFileStart(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = call %struct.TYPE_7__* (...) @makeStringInfo()
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = call i32 @enlargeStringInfo(%struct.TYPE_7__* %19, i32 32768)
  %21 = call i32 (...) @SendCopyOutStart()
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PG_WAIT_IO, align 4
  %26 = call i32 @FileReadCompat(i32* %9, i32 %24, i32 32768, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %30, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i32 @SendCopyData(%struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @resetStringInfo(%struct.TYPE_7__* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PG_WAIT_IO, align 4
  %42 = call i32 @FileReadCompat(i32* %9, i32 %40, i32 32768, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %27

43:                                               ; preds = %27
  %44 = call i32 (...) @SendCopyDone()
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = call i32 @FreeStringInfo(%struct.TYPE_7__* %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @FileClose(i32 %47)
  ret void
}

declare dso_local i32 @FileOpenForTransmit(i8*, i32, i32) #1

declare dso_local i32 @FileCompatFromFileStart(i32) #1

declare dso_local %struct.TYPE_7__* @makeStringInfo(...) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SendCopyOutStart(...) #1

declare dso_local i32 @FileReadCompat(i32*, i32, i32, i32) #1

declare dso_local i32 @SendCopyData(%struct.TYPE_7__*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_7__*) #1

declare dso_local i32 @SendCopyDone(...) #1

declare dso_local i32 @FreeStringInfo(%struct.TYPE_7__*) #1

declare dso_local i32 @FileClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

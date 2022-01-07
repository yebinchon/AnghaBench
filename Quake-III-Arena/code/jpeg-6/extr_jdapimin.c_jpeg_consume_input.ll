; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdapimin.c_jpeg_consume_input.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdapimin.c_jpeg_consume_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { {}*, {}* }
%struct.TYPE_11__ = type { {}* }

@JPEG_SUSPENDED = common dso_local global i32 0, align 4
@JPEG_REACHED_SOS = common dso_local global i32 0, align 4
@JERR_BAD_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jpeg_consume_input(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load i32, i32* @JPEG_SUSPENDED, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %56 [
    i32 129, label %8
    i32 135, label %27
    i32 131, label %45
    i32 134, label %47
    i32 133, label %47
    i32 130, label %47
    i32 132, label %47
    i32 137, label %47
    i32 136, label %47
    i32 128, label %47
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = bitcast {}** %12 to i32 (%struct.TYPE_13__*)**
  %14 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call i32 %14(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.TYPE_13__*)**
  %22 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %21, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = call i32 %22(%struct.TYPE_13__* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 135, i32* %26, align 8
  br label %27

27:                                               ; preds = %1, %8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.TYPE_13__*)**
  %33 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = call i32 %33(%struct.TYPE_13__* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @JPEG_REACHED_SOS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = call i32 @default_decompress_parms(%struct.TYPE_13__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  store i32 131, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %27
  br label %63

45:                                               ; preds = %1
  %46 = load i32, i32* @JPEG_REACHED_SOS, align 4
  store i32 %46, i32* %3, align 4
  br label %63

47:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.TYPE_13__*)**
  %53 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = call i32 %53(%struct.TYPE_13__* %54)
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = load i32, i32* @JERR_BAD_STATE, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ERREXIT1(%struct.TYPE_13__* %57, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %56, %47, %45, %44
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @default_decompress_parms(%struct.TYPE_13__*) #1

declare dso_local i32 @ERREXIT1(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

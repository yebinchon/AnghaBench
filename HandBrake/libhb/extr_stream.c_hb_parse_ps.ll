; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_parse_ps.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_parse_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_15__ = type { i32 }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_14__*)* @hb_parse_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_parse_ps(i32* %0, i32* %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %13 = call i32 @memset(%struct.TYPE_14__* %12, i32 0, i32 32)
  %14 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @bits_init(%struct.TYPE_15__* %10, i32* %20, i32 %21, i32 0)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @bits_clone(%struct.TYPE_15__* %11, %struct.TYPE_15__* %10, i32 %23)
  %25 = call i32 @bits_bytes_left(%struct.TYPE_15__* %10)
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %107

28:                                               ; preds = %4
  %29 = call i32 @bits_get(%struct.TYPE_15__* %10, i32 24)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %107

32:                                               ; preds = %28
  %33 = call i32 @bits_get(%struct.TYPE_15__* %10, i32 8)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 185
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %107

41:                                               ; preds = %32
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 186
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = call i32 @parse_pack_header(i32* %47, %struct.TYPE_15__* %11, %struct.TYPE_14__* %48)
  store i32 %49, i32* %5, align 4
  br label %107

50:                                               ; preds = %41
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 189
  br i1 %54, label %55, label %94

55:                                               ; preds = %50
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 190
  br i1 %59, label %60, label %94

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 191
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 240
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 241
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 242
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 248
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 255
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = call i32 @parse_pes_header(i32* %91, %struct.TYPE_15__* %11, %struct.TYPE_14__* %92)
  store i32 %93, i32* %5, align 4
  br label %107

94:                                               ; preds = %85, %80, %75, %70, %65, %60, %55, %50
  %95 = call i32 @bits_bytes_left(%struct.TYPE_15__* %10)
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %107

98:                                               ; preds = %94
  %99 = call i32 @bits_get(%struct.TYPE_15__* %10, i32 16)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 3
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  store i32 1, i32* %5, align 4
  br label %107

107:                                              ; preds = %98, %97, %90, %46, %40, %31, %27
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @bits_init(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @bits_clone(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @bits_bytes_left(%struct.TYPE_15__*) #1

declare dso_local i32 @bits_get(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @parse_pack_header(i32*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @parse_pes_header(i32*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

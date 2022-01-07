; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_SizeOfSector.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_SizeOfSector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32* }

@image_type = common dso_local global i64* null, align 8
@IMAGE_TYPE_ATR = common dso_local global i64 0, align 8
@BINLOAD_start_binloading = common dso_local global i64 0, align 8
@IMAGE_TYPE_PRO = common dso_local global i64 0, align 8
@IMAGE_TYPE_VAPI = common dso_local global i64 0, align 8
@additional_info = common dso_local global %struct.TYPE_5__** null, align 8
@sectorcount = common dso_local global i32* null, align 8
@boot_sectors_type = common dso_local global i64* null, align 8
@BOOT_SECTORS_PHYSICAL = common dso_local global i64 0, align 8
@sectorsize = common dso_local global i32* null, align 8
@BOOT_SECTORS_LOGICAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SIO_SizeOfSector(i64 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i64*, i64** @image_type, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IMAGE_TYPE_ATR, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 16, i32 0
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* @BINLOAD_start_binloading, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  store i32 128, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %29
  br label %143

35:                                               ; preds = %4
  %36 = load i64*, i64** @image_type, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IMAGE_TYPE_PRO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  store i32 128, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = mul nsw i32 140, %44
  %46 = add nsw i32 16, %45
  store i32 %46, i32* %10, align 4
  br label %131

47:                                               ; preds = %35
  %48 = load i64*, i64** @image_type, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IMAGE_TYPE_VAPI, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %47
  store i32 128, i32* %9, align 4
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @additional_info, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %12, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = icmp eq %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %91

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** @sectorcount, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  br label %90

70:                                               ; preds = %62
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %76
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %13, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %89

83:                                               ; preds = %70
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %83, %82
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90, %61
  br label %130

92:                                               ; preds = %47
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  store i32 128, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load i64*, i64** @boot_sectors_type, align 8
  %100 = load i64, i64* %5, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BOOT_SECTORS_PHYSICAL, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 256, i32 128
  %107 = mul nsw i32 %98, %106
  %108 = add nsw i32 %96, %107
  store i32 %108, i32* %10, align 4
  br label %129

109:                                              ; preds = %92
  %110 = load i32*, i32** @sectorsize, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i64*, i64** @boot_sectors_type, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BOOT_SECTORS_LOGICAL, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 384, i32 768
  %123 = add nsw i32 %114, %122
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %123, %127
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %109, %95
  br label %130

130:                                              ; preds = %129, %91
  br label %131

131:                                              ; preds = %130, %42
  %132 = load i32*, i32** %7, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32*, i32** %8, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %34, %140, %137
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/cdfs/extr_cdfs.c_cdfs_determine_sector_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/cdfs/extr_cdfs.c_cdfs_determine_sector_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @cdfs_determine_sector_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdfs_determine_sector_size(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [32 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 16
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 2352
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i32 @intfstream_seek(i32 %12, i32 %14, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %21 = call i32 @intfstream_read(i32 %19, i32* %20, i32 128)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 128
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %160

25:                                               ; preds = %1
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 67
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 26
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 68
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 27
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 48
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 28
  %39 = load i32, i32* %38, align 16
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 29
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 49
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 2352, i32* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 24, i32* %49, align 4
  br label %160

50:                                               ; preds = %41, %37, %33, %29, %25
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 17
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 67
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 18
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 68
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 19
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 48
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 20
  %64 = load i32, i32* %63, align 16
  %65 = icmp eq i32 %64, 48
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 21
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 49
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 2352, i32* %72, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 16, i32* %74, align 4
  br label %159

75:                                               ; preds = %66, %62, %58, %54, %50
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %75
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 255
  br i1 %82, label %83, label %128

83:                                               ; preds = %79
  %84 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 255
  br i1 %86, label %87, label %128

87:                                               ; preds = %83
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 255
  br i1 %90, label %91, label %128

91:                                               ; preds = %87
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 4
  %93 = load i32, i32* %92, align 16
  %94 = icmp eq i32 %93, 255
  br i1 %94, label %95, label %128

95:                                               ; preds = %91
  %96 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 255
  br i1 %98, label %99, label %128

99:                                               ; preds = %95
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 6
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 255
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 7
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 255
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 8
  %109 = load i32, i32* %108, align 16
  %110 = icmp eq i32 %109, 255
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 9
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 255
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 10
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 255
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 11
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 2352, i32* %125, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i32 16, i32* %127, align 4
  br label %158

128:                                              ; preds = %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @intfstream_get_size(i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = srem i32 %133, 2352
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store i32 2352, i32* %138, align 4
  br label %157

139:                                              ; preds = %128
  %140 = load i32, i32* %4, align 4
  %141 = srem i32 %140, 2048
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  store i32 2048, i32* %145, align 4
  br label %156

146:                                              ; preds = %139
  %147 = load i32, i32* %4, align 4
  %148 = srem i32 %147, 2336
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32 2336, i32* %152, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  store i32 8, i32* %154, align 4
  br label %155

155:                                              ; preds = %150, %146
  br label %156

156:                                              ; preds = %155, %143
  br label %157

157:                                              ; preds = %156, %136
  br label %158

158:                                              ; preds = %157, %123
  br label %159

159:                                              ; preds = %158, %70
  br label %160

160:                                              ; preds = %24, %159, %45
  ret void
}

declare dso_local i32 @intfstream_seek(i32, i32, i32) #1

declare dso_local i32 @intfstream_read(i32, i32*, i32) #1

declare dso_local i32 @intfstream_get_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

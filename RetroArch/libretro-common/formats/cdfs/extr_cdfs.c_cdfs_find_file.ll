; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/cdfs/extr_cdfs.c_cdfs_find_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/cdfs/extr_cdfs.c_cdfs_find_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @cdfs_find_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdfs_find_file(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2048 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 92)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 0
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @memcpy(i32* %24, i8* %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 %29
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 0
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @cdfs_find_file(%struct.TYPE_4__* %31, i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %172

39:                                               ; preds = %17
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i8*, i8** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %5, align 8
  br label %75

45:                                               ; preds = %2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @cdfs_seek_track_sector(%struct.TYPE_5__* %48, i32 16)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 0
  %56 = call i32 @intfstream_read(i32 %54, i32* %55, i32 8192)
  store i32 158, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %60, %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %67, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %45, %39
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @cdfs_seek_track_sector(%struct.TYPE_5__* %78, i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 0
  %87 = call i32 @intfstream_read(i32 %85, i32* %86, i32 8192)
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strlen(i8* %88)
  store i32 %89, i32* %9, align 4
  %90 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 0
  store i32* %90, i32** %7, align 8
  br label %91

91:                                               ; preds = %164, %75
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds [2048 x i32], [2048 x i32]* %6, i64 0, i64 0
  %94 = getelementptr inbounds i32, i32* %93, i64 8192
  %95 = icmp ult i32* %92, %94
  br i1 %95, label %96, label %171

96:                                               ; preds = %91
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  br label %171

101:                                              ; preds = %96
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 33, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 59
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 33, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %164

117:                                              ; preds = %109, %101
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 33
  %120 = bitcast i32* %119 to i8*
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @strncasecmp(i8* %120, i8* %121, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %117
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %149, label %128

128:                                              ; preds = %125
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 10
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 11
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 8
  %136 = or i32 %131, %135
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 12
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 16
  %141 = or i32 %136, %140
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 13
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 24
  %146 = or i32 %141, %145
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %128, %125
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 8
  %157 = or i32 %152, %156
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 4
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 16
  %162 = or i32 %157, %161
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %172

164:                                              ; preds = %117, %109
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %7, align 8
  br label %91

171:                                              ; preds = %100, %91
  store i32 -1, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %149, %37
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @cdfs_seek_track_sector(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @intfstream_read(i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

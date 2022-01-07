; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_cache.c__FAT_cache_getPage.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_cache.c__FAT_cache_getPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }

@UINT_MAX = common dso_local global i32 0, align 4
@CACHE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_6__*, i32)* @_FAT_cache_getPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @_FAT_cache_getPage(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* @UINT_MAX, align 4
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %105, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %108

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp uge i32 %29, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %44, %50
  %52 = icmp ult i32 %38, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %37
  %54 = call i8* (...) @accessTime()
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32 %55, i32* %60, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %3, align 8
  br label %211

65:                                               ; preds = %37, %28
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CACHE_FREE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %68
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %77, %68
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CACHE_FREE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %11, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %96, %77, %65
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %24

108:                                              ; preds = %24
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %150

111:                                              ; preds = %108
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %150

119:                                              ; preds = %111
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @_FAT_disc_writeSectors(i32 %122, i32 %128, i32 %134, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %119
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %211

144:                                              ; preds = %119
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = load i32, i32* %11, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %144, %111, %108
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %9, align 4
  %153 = udiv i32 %151, %152
  %154 = load i32, i32* %9, align 4
  %155 = mul i32 %153, %154
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add i32 %156, %157
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ugt i32 %159, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %150
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %164, %150
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %5, align 4
  %175 = sub i32 %173, %174
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %177 = load i32, i32* %11, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @_FAT_disc_readSectors(i32 %171, i32 %172, i32 %175, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %168
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %211

185:                                              ; preds = %168
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %188 = load i32, i32* %11, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  store i32 %186, i32* %191, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %5, align 4
  %194 = sub i32 %192, %193
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %196 = load i32, i32* %11, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  store i32 %194, i32* %199, align 4
  %200 = call i8* (...) @accessTime()
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %203 = load i32, i32* %11, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 2
  store i32 %201, i32* %206, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %208 = load i32, i32* %11, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i64 %209
  store %struct.TYPE_5__* %210, %struct.TYPE_5__** %3, align 8
  br label %211

211:                                              ; preds = %185, %184, %143, %53
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %212
}

declare dso_local i8* @accessTime(...) #1

declare dso_local i32 @_FAT_disc_writeSectors(i32, i32, i32, i32) #1

declare dso_local i32 @_FAT_disc_readSectors(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

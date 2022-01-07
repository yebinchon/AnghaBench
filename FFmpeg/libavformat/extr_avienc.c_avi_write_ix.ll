; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_ix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_21__**, %struct.TYPE_25__*, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i64 }

@__const.avi_write_ix.ix_tag = private unnamed_addr constant [5 x i8] c"ix00\00", align 1
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@AVI_MASTER_INDEX_PREFIX_SIZE = common dso_local global i32 0, align 4
@AVI_MASTER_INDEX_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @avi_write_ix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_ix(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %3, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %4, align 8
  %21 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.avi_write_ix.ix_tag, i32 0, i32 0), i64 5, i1 false)
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @av_assert0(i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %104, %1
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %107

34:                                               ; preds = %28
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %37, i64 %39
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %9, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %46, %50
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %34
  %57 = load i32, i32* @AVI_MASTER_INDEX_PREFIX_SIZE, align 4
  %58 = load i32, i32* @AVI_MASTER_INDEX_ENTRY_SIZE, align 4
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = add nsw i32 %57, %62
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %65 = call i32 @avio_tell(%struct.TYPE_23__* %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @update_odml_entry(%struct.TYPE_26__* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @write_odml_master(%struct.TYPE_26__* %71, i32 %72)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = call i32 @avio_tell(%struct.TYPE_23__* %74)
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @av_assert1(i32 %80)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %56, %34
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %92, %96
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @av_assert0(i32 %102)
  br label %104

104:                                              ; preds = %89
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %28

107:                                              ; preds = %28
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %222, %107
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %225

114:                                              ; preds = %108
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %117, i64 %119
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %12, align 8
  %124 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %128, i64 %130
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @avi_stream2fourcc(i8* %124, i32 %125, i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 48, %138
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 3
  store i8 %140, i8* %141, align 1
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %143 = call i32 @avio_tell(%struct.TYPE_23__* %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %145 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %146 = call i32 @ffio_wfourcc(%struct.TYPE_23__* %144, i8* %145)
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 8
  %153 = add nsw i32 %152, 24
  %154 = call i32 @avio_wl32(%struct.TYPE_23__* %147, i32 %153)
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %156 = call i32 @avio_wl16(%struct.TYPE_23__* %155, i32 2)
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %158 = call i32 @avio_w8(%struct.TYPE_23__* %157, i32 0)
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %160 = call i32 @avio_w8(%struct.TYPE_23__* %159, i32 1)
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @avio_wl32(%struct.TYPE_23__* %161, i32 %165)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %168 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %169 = call i32 @ffio_wfourcc(%struct.TYPE_23__* %167, i8* %168)
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @avio_wl64(%struct.TYPE_23__* %170, i32 %173)
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %176 = call i32 @avio_wl32(%struct.TYPE_23__* %175, i32 0)
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %210, %114
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %178, %182
  br i1 %183, label %184, label %213

184:                                              ; preds = %177
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i32, i32* %8, align 4
  %188 = call %struct.TYPE_24__* @avi_get_ientry(%struct.TYPE_19__* %186, i32 %187)
  store %struct.TYPE_24__* %188, %struct.TYPE_24__** %14, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 8
  %194 = call i32 @avio_wl32(%struct.TYPE_23__* %189, i32 %193)
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = and i32 %199, 2147483647
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 16
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 0, i32 -2147483648
  %208 = or i32 %200, %207
  %209 = call i32 @avio_wl32(%struct.TYPE_23__* %195, i32 %208)
  br label %210

210:                                              ; preds = %184
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %177

213:                                              ; preds = %177
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %218 = call i32 @avio_tell(%struct.TYPE_23__* %217)
  %219 = load i32, i32* %13, align 4
  %220 = sub nsw i32 %218, %219
  %221 = call i32 @update_odml_entry(%struct.TYPE_26__* %214, i32 %215, i32 %216, i32 %220)
  br label %222

222:                                              ; preds = %213
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %108

225:                                              ; preds = %108
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @avio_tell(%struct.TYPE_23__*) #2

declare dso_local i32 @update_odml_entry(%struct.TYPE_26__*, i32, i32, i32) #2

declare dso_local i32 @write_odml_master(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @av_assert1(i32) #2

declare dso_local i32 @avi_stream2fourcc(i8*, i32, i32) #2

declare dso_local i32 @ffio_wfourcc(%struct.TYPE_23__*, i8*) #2

declare dso_local i32 @avio_wl32(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @avio_wl16(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @avio_w8(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @avio_wl64(%struct.TYPE_23__*, i32) #2

declare dso_local %struct.TYPE_24__* @avi_get_ientry(%struct.TYPE_19__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

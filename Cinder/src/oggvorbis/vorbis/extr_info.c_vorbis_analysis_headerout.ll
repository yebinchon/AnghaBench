; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_info.c_vorbis_analysis_headerout.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_info.c_vorbis_analysis_headerout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32*, i32*, i32* }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i8*, i32* }
%struct.TYPE_19__ = type { i32 }

@OV_EIMPL = common dso_local global i32 0, align 4
@OV_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_analysis_headerout(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3, %struct.TYPE_20__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %11, align 8
  %16 = load i32, i32* @OV_EIMPL, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %15, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %24 = icmp ne %struct.TYPE_18__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @OV_EFAULT, align 4
  store i32 %26, i32* %12, align 4
  br label %161

27:                                               ; preds = %5
  %28 = call i32 @oggpack_writeinit(%struct.TYPE_19__* %14)
  %29 = load i32*, i32** %13, align 8
  %30 = call i64 @_vorbis_pack_info(%struct.TYPE_19__* %14, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %161

33:                                               ; preds = %27
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @_ogg_free(i32* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %45 = call i8* @_ogg_malloc(i8* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %55 = call i32 @memcpy(i32* %51, i32 %53, i8* %54)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 5
  store i32* %58, i32** %60, align 8
  %61 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = call i32 @oggpack_reset(%struct.TYPE_19__* %14)
  %73 = load i32*, i32** %8, align 8
  %74 = call i64 @_vorbis_pack_comment(%struct.TYPE_19__* %14, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %43
  br label %161

77:                                               ; preds = %43
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @_ogg_free(i32* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %89 = call i8* @_ogg_malloc(i8* %88)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %99 = call i32 @memcpy(i32* %95, i32 %97, i8* %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 5
  store i32* %102, i32** %104, align 8
  %105 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = call i32 @oggpack_reset(%struct.TYPE_19__* %14)
  %117 = load i32*, i32** %13, align 8
  %118 = call i64 @_vorbis_pack_books(%struct.TYPE_19__* %14, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %87
  br label %161

121:                                              ; preds = %87
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @_ogg_free(i32* %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %133 = call i8* @_ogg_malloc(i8* %132)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  store i32* %134, i32** %136, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %143 = call i32 @memcpy(i32* %139, i32 %141, i8* %142)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 5
  store i32* %146, i32** %148, align 8
  %149 = call i8* @oggpack_bytes(%struct.TYPE_19__* %14)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  store i32 2, i32* %159, align 4
  %160 = call i32 @oggpack_writeclear(%struct.TYPE_19__* %14)
  store i32 0, i32* %6, align 4
  br label %210

161:                                              ; preds = %120, %76, %32, %25
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %163 = call i32 @memset(%struct.TYPE_20__* %162, i32 0, i32 40)
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %165 = call i32 @memset(%struct.TYPE_20__* %164, i32 0, i32 40)
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %167 = call i32 @memset(%struct.TYPE_20__* %166, i32 0, i32 40)
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %169 = icmp ne %struct.TYPE_18__* %168, null
  br i1 %169, label %170, label %208

170:                                              ; preds = %161
  %171 = call i32 @oggpack_writeclear(%struct.TYPE_19__* %14)
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @_ogg_free(i32* %179)
  br label %181

181:                                              ; preds = %176, %170
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @_ogg_free(i32* %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @_ogg_free(i32* %199)
  br label %201

201:                                              ; preds = %196, %191
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 2
  store i32* null, i32** %203, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  store i32* null, i32** %205, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  store i32* null, i32** %207, align 8
  br label %208

208:                                              ; preds = %201, %161
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %208, %131
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @oggpack_writeinit(%struct.TYPE_19__*) #1

declare dso_local i64 @_vorbis_pack_info(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @_ogg_free(i32*) #1

declare dso_local i8* @_ogg_malloc(i8*) #1

declare dso_local i8* @oggpack_bytes(%struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(i32*, i32, i8*) #1

declare dso_local i32 @oggpack_reset(%struct.TYPE_19__*) #1

declare dso_local i64 @_vorbis_pack_comment(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @_vorbis_pack_books(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @oggpack_writeclear(%struct.TYPE_19__*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

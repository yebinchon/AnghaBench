; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_generate_output_data.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_generate_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i8*, i8*, i8*, i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i8*, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, i32, i32, %struct.TYPE_17__, %struct.TYPE_24__* }
%struct.TYPE_17__ = type { i32, i64, i64, i8*, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i64 }

@V = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_22__*, i32)* @generate_output_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @generate_output_data(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %7, align 8
  %16 = call %struct.TYPE_24__* @hb_buffer_list_clear(i32* %6)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i64 %22
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %8, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %9, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 4
  %41 = call i32 @hb_parse_ps(%struct.TYPE_22__* %32, i32* %35, i32 %38, %struct.TYPE_17__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %31
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  store i32 0, i32* %49, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %296

50:                                               ; preds = %31
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %50, %2
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32* %67, i32** %10, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %59
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %296

78:                                               ; preds = %59
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i64 %87
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %13, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %78
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @V, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @isIframe(%struct.TYPE_22__* %101, i32* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %126, label %106

106:                                              ; preds = %100, %93
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @V, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = icmp slt i32 %114, 512
  br i1 %115, label %116, label %125

116:                                              ; preds = %110, %106
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  store i32 0, i32* %124, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %296

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %100
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %78
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %259, %129
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %269

136:                                              ; preds = %133
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i64 %142
  store %struct.TYPE_23__* %143, %struct.TYPE_23__** %15, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %146, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %136
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %259

158:                                              ; preds = %152, %136
  %159 = load i32, i32* %11, align 4
  %160 = call %struct.TYPE_24__* @hb_buffer_init(i32 %159)
  store %struct.TYPE_24__* %160, %struct.TYPE_24__** %7, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 6
  %169 = icmp slt i64 %163, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %158
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %158
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %176 = call i32 @hb_buffer_list_append(i32* %6, %struct.TYPE_24__* %175)
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %178 = call i32 @get_id(%struct.TYPE_23__* %177)
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 7
  store i32 %178, i32* %181, align 4
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @stream_kind_to_buf_type(i32 %184)
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 6
  store i32 %185, i32* %188, align 8
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 5
  store i64 %192, i64* %195, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 5
  store i64 0, i64* %198, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %239

203:                                              ; preds = %174
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 4
  store i64 %207, i64* %210, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 3
  store i8* %217, i8** %220, align 8
  %221 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  store i8* %221, i8** %224, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 4
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 2
  store i8* %228, i8** %231, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 3
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 1
  store i8* %235, i8** %238, align 8
  br label %252

239:                                              ; preds = %174
  %240 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 3
  store i8* %240, i8** %243, align 8
  %244 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 2
  store i8* %244, i8** %247, align 8
  %248 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  store i8* %248, i8** %251, align 8
  br label %252

252:                                              ; preds = %239, %203
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32*, i32** %10, align 8
  %257 = load i32, i32* %11, align 4
  %258 = call i32 @memcpy(i32* %255, i32* %256, i32 %257)
  br label %259

259:                                              ; preds = %252, %157
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %262, align 8
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %12, align 4
  br label %133

269:                                              ; preds = %133
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %269
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %282, 6
  %284 = icmp sge i64 %278, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %275
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 0
  store i32 0, i32* %287, align 8
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 1
  store i64 0, i64* %289, align 8
  br label %290

290:                                              ; preds = %285, %275, %269
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 0
  store i32 0, i32* %292, align 8
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 2
  store i32 0, i32* %294, align 8
  %295 = call %struct.TYPE_24__* @hb_buffer_list_clear(i32* %6)
  store %struct.TYPE_24__* %295, %struct.TYPE_24__** %3, align 8
  br label %296

296:                                              ; preds = %290, %116, %77, %43
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %297
}

declare dso_local %struct.TYPE_24__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @hb_parse_ps(%struct.TYPE_22__*, i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @isIframe(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @hb_buffer_init(i32) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @get_id(%struct.TYPE_23__*) #1

declare dso_local i32 @stream_kind_to_buf_type(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

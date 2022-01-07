; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_copy.c_copy_do_processing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_copy.c_copy_do_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__**, %struct.TYPE_23__**, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_23__*)*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_27__ = type { i64, i64, i32*, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_24__ = type { i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"format not set on port %s %p (%i)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to send an error event buffer\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"discarding event %i on port %s %p\00", align 1
@MMAL_EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @copy_do_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_do_processing(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %4, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %17, i64 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %5, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %22, i64 0
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %6, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %242

34:                                               ; preds = %1
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_27__* @mmal_queue_get(i32 %41)
  store %struct.TYPE_27__* %42, %struct.TYPE_27__** %7, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %44 = icmp ne %struct.TYPE_27__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %242

46:                                               ; preds = %34
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %123

51:                                               ; preds = %46
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %53 = call %struct.TYPE_24__* @mmal_event_format_changed_get(%struct.TYPE_27__* %52)
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %9, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %55 = icmp ne %struct.TYPE_24__* %54, null
  br i1 %55, label %56, label %107

56:                                               ; preds = %51
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @mmal_format_full_copy(i32 %59, i32 %62)
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MMAL_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %56
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i64 (%struct.TYPE_23__*)*, i64 (%struct.TYPE_23__*)** %75, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = call i64 %76(%struct.TYPE_23__* %77)
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %71, %56
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MMAL_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %90, %struct.TYPE_23__* %91, i64 %94)
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @mmal_event_error_send(%struct.TYPE_25__* %96, i64 %99)
  %101 = load i64, i64* @MMAL_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %87
  br label %106

106:                                              ; preds = %105, %81
  br label %117

107:                                              ; preds = %51
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %116 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %114, %struct.TYPE_23__* %115)
  br label %117

117:                                              ; preds = %107, %106
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %122 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_23__* %120, %struct.TYPE_27__* %121)
  store i32 1, i32* %2, align 4
  br label %242

123:                                              ; preds = %46
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MMAL_SUCCESS, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %138 = call i32 @mmal_queue_put_back(i32 %136, %struct.TYPE_27__* %137)
  store i32 0, i32* %2, align 4
  br label %242

139:                                              ; preds = %123
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call %struct.TYPE_27__* @mmal_queue_get(i32 %146)
  store %struct.TYPE_27__* %147, %struct.TYPE_27__** %8, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %149 = icmp ne %struct.TYPE_27__* %148, null
  br i1 %149, label %160, label %150

150:                                              ; preds = %139
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %159 = call i32 @mmal_queue_put_back(i32 %157, %struct.TYPE_27__* %158)
  store i32 0, i32* %2, align 4
  br label %242

160:                                              ; preds = %139
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %163, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %160
  %169 = load i64, i64* @MMAL_EINVAL, align 8
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @mmal_event_error_send(%struct.TYPE_25__* %172, i64 %175)
  %177 = load i64, i64* @MMAL_SUCCESS, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %168
  store i32 0, i32* %2, align 4
  br label %242

182:                                              ; preds = %160
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %184 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_27__* %183)
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %186 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_27__* %185)
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @memcpy(i64 %189, i64 %196, i64 %199)
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %202 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_27__* %201)
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %204 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_27__* %203)
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 6
  store i64 0, i64* %211, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 4
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  store i32 %230, i32* %233, align 4
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 0
  store i64 0, i64* %235, align 8
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %238 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_23__* %236, %struct.TYPE_27__* %237)
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %241 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_23__* %239, %struct.TYPE_27__* %240)
  store i32 1, i32* %2, align 4
  br label %242

242:                                              ; preds = %182, %181, %150, %129, %117, %45, %33
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.TYPE_27__* @mmal_queue_get(i32) #1

declare dso_local %struct.TYPE_24__* @mmal_event_format_changed_get(%struct.TYPE_27__*) #1

declare dso_local i64 @mmal_format_full_copy(i32, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i64 @mmal_event_error_send(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_23__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_27__*) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

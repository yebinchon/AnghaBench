; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_ipc_task_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_ipc_task_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_16__*, i8**, %struct.TYPE_15__*, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }

@ipc_table_entries = common dso_local global i32* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"ipc_task_init\00", align 1
@IP_NULL = common dso_local global i64 0, align 8
@TASK_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@TASK_PORT_REGISTER_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_task_init(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %11 = load i32*, i32** @ipc_table_entries, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = call i64 @ipc_space_create(i32* %12, %struct.TYPE_15__** %5)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @KERN_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %22, align 8
  %23 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @IP_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  %30 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @IP_NULL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = call i32 @itk_lock_init(%struct.TYPE_14__* %37)
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 12
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* @IP_NULL, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 11
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = call i64 @task_is_a_corpse_fork(%struct.TYPE_14__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load i64, i64* @IP_NULL, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 10
  store i64 %52, i64* %54, align 8
  br label %60

55:                                               ; preds = %36
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @ipc_port_make_send(i64 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 10
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i64, i64* @IP_NULL, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 9
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 8
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TASK_NULL, align 8
  %69 = icmp eq %struct.TYPE_14__* %67, %68
  br i1 %69, label %70, label %134

70:                                               ; preds = %60
  %71 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %86, %70
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i64, i64* @IP_NULL, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  store i8* %78, i8** %85, align 8
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %72

89:                                               ; preds = %72
  %90 = call i32 (...) @host_priv_self()
  %91 = call i64 @host_get_host_port(i32 %90, i64* %10)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @KERN_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i64, i64* %10, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load i64, i64* @IP_NULL, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* @IP_NULL, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i64, i64* @IP_NULL, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* @IP_NULL, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %130, %89
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @TASK_PORT_REGISTER_MAX, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = load i64, i64* @IP_NULL, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 7
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %123, i8** %129, align 8
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %117

133:                                              ; preds = %117
  br label %270

134:                                              ; preds = %60
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = call i32 @itk_lock(%struct.TYPE_14__* %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @IP_NULL, align 8
  %141 = icmp ne i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %163, %134
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @TASK_PORT_REGISTER_MAX, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 7
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @ipc_port_copy_send(i8* %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 7
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %156, i8** %162, align 8
  br label %163

163:                                              ; preds = %148
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %144

166:                                              ; preds = %144
  %167 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %234, %166
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %237

172:                                              ; preds = %168
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 6
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @ipc_port_copy_send(i8* %180)
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 6
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 3
  store i8* %181, i8** %188, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 6
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 2
  store i32 %196, i32* %203, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 6
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 6
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  store i32 %211, i32* %218, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 6
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 6
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  store i32 %226, i32* %233, align 8
  br label %234

234:                                              ; preds = %172
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %168

237:                                              ; preds = %168
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 5
  %240 = load i8*, i8** %239, align 8
  %241 = call i8* @ipc_port_copy_send(i8* %240)
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 5
  store i8* %241, i8** %243, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 4
  %246 = load i8*, i8** %245, align 8
  %247 = call i8* @ipc_port_copy_send(i8* %246)
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 4
  store i8* %247, i8** %249, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 3
  %252 = load i8*, i8** %251, align 8
  %253 = call i8* @ipc_port_copy_send(i8* %252)
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 3
  store i8* %253, i8** %255, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 2
  %258 = load i8*, i8** %257, align 8
  %259 = call i8* @ipc_port_copy_send(i8* %258)
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = call i8* @ipc_port_copy_send(i8* %264)
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  store i8* %265, i8** %267, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %269 = call i32 @itk_unlock(%struct.TYPE_14__* %268)
  br label %270

270:                                              ; preds = %237, %133
  ret void
}

declare dso_local i64 @ipc_space_create(i32*, %struct.TYPE_15__**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @itk_lock_init(%struct.TYPE_14__*) #1

declare dso_local i64 @task_is_a_corpse_fork(%struct.TYPE_14__*) #1

declare dso_local i64 @ipc_port_make_send(i64) #1

declare dso_local i64 @host_get_host_port(i32, i64*) #1

declare dso_local i32 @host_priv_self(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @itk_lock(%struct.TYPE_14__*) #1

declare dso_local i8* @ipc_port_copy_send(i8*) #1

declare dso_local i32 @itk_unlock(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

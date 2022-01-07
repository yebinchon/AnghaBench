; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_decode_inner.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_decode_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_17__*, i8**, %struct.TYPE_19__ }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@MPC_FALSE = common dso_local global i32 0, align 4
@MPC_FRAME_LENGTH = common dso_local global i32 0, align 4
@MPC_BUFFER_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"SE\00", align 1
@MPC_STATUS_OK = common dso_local global i32 0, align 4
@MPC_STATUS_FAIL = common dso_local global i32 0, align 4
@MPC_TRUE = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@MPC_BUFFER_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @mpc_demux_decode_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_demux_decode_inner(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 9
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %11, 8
  br i1 %12, label %13, label %208

13:                                               ; preds = %2
  %14 = load i32, i32* @MPC_FALSE, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %125

21:                                               ; preds = %13
  %22 = bitcast %struct.TYPE_22__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, -8
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %35, %38
  %40 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %41 = mul nsw i32 %39, %40
  %42 = icmp eq i32 %32, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %21
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = call i64 @mpc_demux_pos(%struct.TYPE_21__* %44)
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 8
  %49 = load i8**, i8*** %48, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  store i8* %46, i8** %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %43, %21
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = load i32, i32* @MPC_BUFFER_FULL, align 4
  %62 = call i64 @mpc_demux_fill(%struct.TYPE_21__* %60, i32 11, i32 %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 6
  %65 = call i32 @mpc_bits_get_block(%struct.TYPE_23__* %64, %struct.TYPE_22__* %7)
  br label %66

66:                                               ; preds = %97, %59
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @memcmp(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @mpc_check_key(i32 %73)
  %75 = call i32 @MPC_AUTO_FAIL(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @memcmp(i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 4
  %83 = load i32, i32* @MPC_STATUS_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %346

84:                                               ; preds = %71
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = add nsw i32 11, %88
  %90 = load i32, i32* @MPC_BUFFER_FULL, align 4
  %91 = call i64 @mpc_demux_fill(%struct.TYPE_21__* %85, i32 %89, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %96, i32* %3, align 4
  br label %346

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %99
  store i64 %104, i64* %102, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 6
  %107 = call i32 @mpc_bits_get_block(%struct.TYPE_23__* %106, %struct.TYPE_22__* %7)
  br label %66

108:                                              ; preds = %66
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = mul nsw i32 %111, 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @MPC_TRUE, align 4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %108, %13
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %128, %131
  %133 = sext i32 %132 to i64
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %133, %137
  %139 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp sle i64 %138, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %125
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 3
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* @MPC_BUFFER_FULL, align 4
  %150 = call i64 @mpc_demux_fill(%struct.TYPE_21__* %143, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %142, %125
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 6
  %154 = bitcast %struct.TYPE_23__* %6 to i8*
  %155 = bitcast %struct.TYPE_23__* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 16, i1 false)
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 7
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = call i32 @mpc_decoder_decode_frame(%struct.TYPE_17__* %158, %struct.TYPE_23__* %160, %struct.TYPE_20__* %161)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %166, %168
  %170 = shl i64 %169, 3
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %170, %173
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = sub nsw i64 %174, %179
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %184, %180
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %188, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %151
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %203, 7
  br i1 %204, label %205, label %207

205:                                              ; preds = %200, %151
  %206 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %206, i32* %3, align 4
  br label %346

207:                                              ; preds = %200, %195
  br label %315

208:                                              ; preds = %2
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 7
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = shl i32 %216, %219
  %221 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %222 = mul nsw i32 %220, %221
  %223 = icmp eq i32 %213, %222
  br i1 %223, label %224, label %240

224:                                              ; preds = %208
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %226 = call i64 @mpc_demux_pos(%struct.TYPE_21__* %225)
  %227 = inttoptr i64 %226 to i8*
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 8
  %230 = load i8**, i8*** %229, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %230, i64 %234
  store i8* %227, i8** %235, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %224, %208
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %242 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %243 = load i32, i32* @MPC_BUFFER_FULL, align 4
  %244 = load i32, i32* @MPC_BUFFER_SWAP, align 4
  %245 = or i32 %243, %244
  %246 = call i64 @mpc_demux_fill(%struct.TYPE_21__* %241, i32 %242, i32 %245)
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 6
  %249 = call i64 @mpc_bits_read(%struct.TYPE_23__* %248, i32 20)
  %250 = trunc i64 %249 to i32
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 7
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 7
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %258, %263
  %265 = sub nsw i32 %264, 1
  %266 = icmp sgt i32 %253, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %240
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 11
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %267, %240
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 6
  %275 = bitcast %struct.TYPE_23__* %6 to i8*
  %276 = bitcast %struct.TYPE_23__* %274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %275, i8* align 8 %276, i64 16, i1 false)
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 7
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %278, align 8
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 6
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %283 = call i32 @mpc_decoder_decode_frame(%struct.TYPE_17__* %279, %struct.TYPE_23__* %281, %struct.TYPE_20__* %282)
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, -1
  br i1 %287, label %288, label %314

288:                                              ; preds = %272
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 6
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = sub nsw i64 %296, %298
  %300 = shl i64 %299, 3
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %300, %303
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = sub nsw i64 %304, %309
  %311 = icmp ne i64 %292, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %288
  %313 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %313, i32* %3, align 4
  br label %346

314:                                              ; preds = %288, %272
  br label %315

315:                                              ; preds = %314, %207
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, -1
  br i1 %319, label %320, label %344

320:                                              ; preds = %315
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %323, %326
  %328 = sext i32 %327 to i64
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 6
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 6
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = sub nsw i32 8, %336
  %338 = ashr i32 %337, 3
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %332, %339
  %341 = icmp slt i64 %328, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %320
  %343 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %343, i32* %3, align 4
  br label %346

344:                                              ; preds = %320, %315
  %345 = load i32, i32* @MPC_STATUS_OK, align 4
  store i32 %345, i32* %3, align 4
  br label %346

346:                                              ; preds = %344, %342, %312, %205, %95, %80
  %347 = load i32, i32* %3, align 4
  ret i32 %347
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mpc_demux_pos(%struct.TYPE_21__*) #2

declare dso_local i64 @mpc_demux_fill(%struct.TYPE_21__*, i32, i32) #2

declare dso_local i32 @mpc_bits_get_block(%struct.TYPE_23__*, %struct.TYPE_22__*) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @MPC_AUTO_FAIL(i32) #2

declare dso_local i32 @mpc_check_key(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mpc_decoder_decode_frame(%struct.TYPE_17__*, %struct.TYPE_23__*, %struct.TYPE_20__*) #2

declare dso_local i64 @mpc_bits_read(%struct.TYPE_23__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

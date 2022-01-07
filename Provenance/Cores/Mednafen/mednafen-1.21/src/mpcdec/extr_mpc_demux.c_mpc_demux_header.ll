; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_header.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_23__, %struct.TYPE_24__, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i8*, i64, i8, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*)* }
%struct.TYPE_21__ = type { i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"n.a.\00", align 1
@MPC_STATUS_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"MP+\00", align 1
@MPC_BUFFER_SWAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"MPCK\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@MPC_STATUS_OK = common dso_local global i64 0, align 8
@DEMUX_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"EI\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"SO\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*)* @mpc_demux_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpc_demux_header(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca %struct.TYPE_21__, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32 255, i32* %9, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = call i64 @mpc_demux_skip_id3v2(%struct.TYPE_20__* %13)
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  store i64 %14, i64* %17, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* @MPC_STATUS_FAIL, align 8
  store i64 %24, i64* %2, align 8
  br label %240

25:                                               ; preds = %1
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %29, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %34 = call i32 %30(%struct.TYPE_22__* %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 5
  store i32 %34, i32* %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = call i64 @mpc_demux_fill(%struct.TYPE_20__* %41, i32 4, i32 0)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = call signext i8 @mpc_bits_read(%struct.TYPE_24__* %44, i32 8)
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 %45, i8* %46, align 1
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = call signext i8 @mpc_bits_read(%struct.TYPE_24__* %48, i32 8)
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 %49, i8* %50, align 1
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = call signext i8 @mpc_bits_read(%struct.TYPE_24__* %52, i32 8)
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %53, i8* %54, align 1
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = call signext i8 @mpc_bits_read(%struct.TYPE_24__* %56, i32 8)
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  store i8 %57, i8* %58, align 1
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %60 = call i64 @memcmp(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %25
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = and i32 %65, 15
  %67 = trunc i32 %66 to i8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  store i8 %67, i8* %70, align 8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = ashr i32 %73, 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 3
  %81 = load i8, i8* %80, align 8
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 7
  br i1 %83, label %84, label %86

84:                                               ; preds = %62
  %85 = load i64, i64* @MPC_STATUS_FAIL, align 8
  store i64 %85, i64* %2, align 8
  br label %240

86:                                               ; preds = %62
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = load i32, i32* @MPC_BUFFER_SWAP, align 4
  %89 = call i64 @mpc_demux_fill(%struct.TYPE_20__* %87, i32 24, i32 %88)
  %90 = icmp slt i64 %89, 24
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @MPC_STATUS_FAIL, align 8
  store i64 %92, i64* %2, align 8
  br label %240

93:                                               ; preds = %86
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = call i32 @streaminfo_read_header_sv7(%struct.TYPE_23__* %95, %struct.TYPE_24__* %97)
  %99 = call i32 @MPC_AUTO_FAIL(i32 %98)
  br label %238

100:                                              ; preds = %25
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %102 = call i64 @memcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %235

104:                                              ; preds = %100
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %106 = call i64 @mpc_demux_fill(%struct.TYPE_20__* %105, i32 11, i32 0)
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = call i32 @mpc_bits_get_block(%struct.TYPE_24__* %108, %struct.TYPE_21__* %5)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %206, %104
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @memcmp(i8* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %219

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @mpc_check_key(i8* %117)
  %119 = load i64, i64* @MPC_STATUS_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i64, i64* @MPC_STATUS_FAIL, align 8
  store i64 %122, i64* %2, align 8
  br label %240

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DEMUX_BUFFER_SIZE, align 8
  %127 = sub nsw i64 %126, 11
  %128 = icmp sgt i64 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i64, i64* @MPC_STATUS_FAIL, align 8
  store i64 %130, i64* %2, align 8
  br label %240

131:                                              ; preds = %123
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = add nsw i32 11, %135
  %137 = call i64 @mpc_demux_fill(%struct.TYPE_20__* %132, i32 %136, i32 0)
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp sle i64 %137, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i64, i64* @MPC_STATUS_FAIL, align 8
  store i64 %142, i64* %2, align 8
  br label %240

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @memcmp(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @streaminfo_read_header_sv8(%struct.TYPE_23__* %150, %struct.TYPE_24__* %152, i32 %155)
  %157 = call i32 @MPC_AUTO_FAIL(i32 %156)
  br label %206

158:                                              ; preds = %143
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @memcmp(i8* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = call i32 @streaminfo_gain(%struct.TYPE_23__* %165, %struct.TYPE_24__* %167)
  br label %205

169:                                              ; preds = %158
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @memcmp(i8* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 1
  %179 = call i32 @streaminfo_encoder_info(%struct.TYPE_23__* %176, %struct.TYPE_24__* %178)
  br label %204

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @memcmp(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %187 = load i32, i32* %6, align 4
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @mpc_demux_SP(%struct.TYPE_20__* %186, i32 %187, i32 %190)
  %192 = call i32 @MPC_AUTO_FAIL(i32 %191)
  br label %203

193:                                              ; preds = %180
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i64 @memcmp(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %200 = call i32 @mpc_demux_ST(%struct.TYPE_20__* %199)
  %201 = call i32 @MPC_AUTO_FAIL(i32 %200)
  br label %202

202:                                              ; preds = %198, %193
  br label %203

203:                                              ; preds = %202, %185
  br label %204

204:                                              ; preds = %203, %174
  br label %205

205:                                              ; preds = %204, %163
  br label %206

206:                                              ; preds = %205, %148
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %208
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %211, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = call i32 @mpc_bits_get_block(%struct.TYPE_24__* %217, %struct.TYPE_21__* %5)
  store i32 %218, i32* %6, align 4
  br label %110

219:                                              ; preds = %110
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %224, %220
  store i32 %225, i32* %223, align 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 3
  %229 = load i8, i8* %228, align 8
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %219
  %233 = load i64, i64* @MPC_STATUS_FAIL, align 8
  store i64 %233, i64* %2, align 8
  br label %240

234:                                              ; preds = %219
  br label %237

235:                                              ; preds = %100
  %236 = load i64, i64* @MPC_STATUS_FAIL, align 8
  store i64 %236, i64* %2, align 8
  br label %240

237:                                              ; preds = %234
  br label %238

238:                                              ; preds = %237, %93
  %239 = load i64, i64* @MPC_STATUS_OK, align 8
  store i64 %239, i64* %2, align 8
  br label %240

240:                                              ; preds = %238, %235, %232, %141, %129, %121, %91, %84, %23
  %241 = load i64, i64* %2, align 8
  ret i64 %241
}

declare dso_local i64 @mpc_demux_skip_id3v2(%struct.TYPE_20__*) #1

declare dso_local i64 @mpc_demux_fill(%struct.TYPE_20__*, i32, i32) #1

declare dso_local signext i8 @mpc_bits_read(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @MPC_AUTO_FAIL(i32) #1

declare dso_local i32 @streaminfo_read_header_sv7(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mpc_bits_get_block(%struct.TYPE_24__*, %struct.TYPE_21__*) #1

declare dso_local i64 @mpc_check_key(i8*) #1

declare dso_local i32 @streaminfo_read_header_sv8(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @streaminfo_gain(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @streaminfo_encoder_info(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mpc_demux_SP(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @mpc_demux_ST(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

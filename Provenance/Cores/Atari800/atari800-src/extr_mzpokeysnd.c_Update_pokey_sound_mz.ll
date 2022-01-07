; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_Update_pokey_sound_mz.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_Update_pokey_sound_mz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pokey_states = common dso_local global %struct.TYPE_21__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @Update_pokey_sound_mz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Update_pokey_sound_mz(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** @pokey_states, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i64 %12
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 15
  switch i32 %15, label %337 [
    i32 133, label %16
    i32 138, label %36
    i32 132, label %73
    i32 137, label %93
    i32 131, label %130
    i32 136, label %150
    i32 130, label %187
    i32 135, label %207
    i32 134, label %244
    i32 128, label %280
    i32 129, label %333
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %21 = call i32 @Update_c0divstart(%struct.TYPE_21__* %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 41
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %28 = call i32 @Update_c1divstart(%struct.TYPE_21__* %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = call i32 @Update_c1stop(%struct.TYPE_21__* %29)
  br label %31

31:                                               ; preds = %26, %16
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %33 = call i32 @Update_c0stop(%struct.TYPE_21__* %32)
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  br label %337

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 64
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 15
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %66 = call i32 @Update_readout_0(%struct.TYPE_21__* %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %68 = call i32 @Update_event0(%struct.TYPE_21__* %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %70 = call i32 @Update_c0stop(%struct.TYPE_21__* %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %337

73:                                               ; preds = %4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %78 = call i32 @Update_c1divstart(%struct.TYPE_21__* %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 41
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %85 = call i32 @Update_c0divstart(%struct.TYPE_21__* %84)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %87 = call i32 @Update_c0stop(%struct.TYPE_21__* %86)
  br label %88

88:                                               ; preds = %83, %73
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %90 = call i32 @Update_c1stop(%struct.TYPE_21__* %89)
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %337

93:                                               ; preds = %4
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 64
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, 32
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, 128
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 10
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, 15
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, 16
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 12
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %123 = call i32 @Update_readout_1(%struct.TYPE_21__* %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %125 = call i32 @Update_event1(%struct.TYPE_21__* %124)
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %127 = call i32 @Update_c1stop(%struct.TYPE_21__* %126)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %337

130:                                              ; preds = %4
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 13
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %135 = call i32 @Update_c2divstart(%struct.TYPE_21__* %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 35
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %142 = call i32 @Update_c3divstart(%struct.TYPE_21__* %141)
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %144 = call i32 @Update_c3stop(%struct.TYPE_21__* %143)
  br label %145

145:                                              ; preds = %140, %130
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %147 = call i32 @Update_c2stop(%struct.TYPE_21__* %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  br label %337

150:                                              ; preds = %4
  %151 = load i32, i32* %6, align 4
  %152 = and i32 %151, 64
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 14
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, 32
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 15
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, 128
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i32
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 16
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, 15
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 17
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %6, align 4
  %174 = and i32 %173, 16
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 18
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %180 = call i32 @Update_readout_2(%struct.TYPE_21__* %179)
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %182 = call i32 @Update_event2(%struct.TYPE_21__* %181)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %184 = call i32 @Update_c2stop(%struct.TYPE_21__* %183)
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  br label %337

187:                                              ; preds = %4
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 19
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %192 = call i32 @Update_c3divstart(%struct.TYPE_21__* %191)
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 35
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %187
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %199 = call i32 @Update_c2divstart(%struct.TYPE_21__* %198)
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %201 = call i32 @Update_c2stop(%struct.TYPE_21__* %200)
  br label %202

202:                                              ; preds = %197, %187
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %204 = call i32 @Update_c3stop(%struct.TYPE_21__* %203)
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  br label %337

207:                                              ; preds = %4
  %208 = load i32, i32* %6, align 4
  %209 = and i32 %208, 64
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 20
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %6, align 4
  %215 = and i32 %214, 32
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 21
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %6, align 4
  %221 = and i32 %220, 128
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 22
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %6, align 4
  %227 = and i32 %226, 15
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 23
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %6, align 4
  %231 = and i32 %230, 16
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 24
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %237 = call i32 @Update_readout_3(%struct.TYPE_21__* %236)
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %239 = call i32 @Update_event3(%struct.TYPE_21__* %238)
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %241 = call i32 @Update_c3stop(%struct.TYPE_21__* %240)
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 1
  store i32 1, i32* %243, align 4
  br label %337

244:                                              ; preds = %4
  %245 = load i32, i32* %6, align 4
  %246 = and i32 %245, 128
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i32
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 25
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @Update_audctl(%struct.TYPE_21__* %251, i32 %252)
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %255 = call i32 @Update_readout_0(%struct.TYPE_21__* %254)
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %257 = call i32 @Update_readout_1(%struct.TYPE_21__* %256)
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %259 = call i32 @Update_readout_2(%struct.TYPE_21__* %258)
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %261 = call i32 @Update_readout_3(%struct.TYPE_21__* %260)
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %263 = call i32 @Update_c0divstart(%struct.TYPE_21__* %262)
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %265 = call i32 @Update_c1divstart(%struct.TYPE_21__* %264)
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %267 = call i32 @Update_c2divstart(%struct.TYPE_21__* %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %269 = call i32 @Update_c3divstart(%struct.TYPE_21__* %268)
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %271 = call i32 @Update_c0stop(%struct.TYPE_21__* %270)
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %273 = call i32 @Update_c1stop(%struct.TYPE_21__* %272)
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %275 = call i32 @Update_c2stop(%struct.TYPE_21__* %274)
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %277 = call i32 @Update_c3stop(%struct.TYPE_21__* %276)
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 1
  store i32 1, i32* %279, align 4
  br label %337

280:                                              ; preds = %4
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 41
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %280
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 40
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 39
  store i32 %288, i32* %290, align 4
  br label %297

291:                                              ; preds = %280
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 38
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 39
  store i32 %294, i32* %296, align 4
  br label %297

297:                                              ; preds = %291, %285
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 36
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 37
  store i32 %300, i32* %302, align 4
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 35
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %297
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 34
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 33
  store i32 %310, i32* %312, align 4
  br label %319

313:                                              ; preds = %297
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 32
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 33
  store i32 %316, i32* %318, align 4
  br label %319

319:                                              ; preds = %313, %307
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 30
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 31
  store i32 %322, i32* %324, align 4
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 29
  store i32 0, i32* %326, align 4
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 28
  store i32 0, i32* %328, align 4
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 26
  store i32 1, i32* %330, align 4
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 27
  store i32 1, i32* %332, align 4
  br label %337

333:                                              ; preds = %4
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %335 = load i32, i32* %6, align 4
  %336 = call i32 @Update_skctl(%struct.TYPE_21__* %334, i32 %335)
  br label %337

337:                                              ; preds = %4, %333, %319, %244, %207, %202, %150, %145, %93, %88, %36, %31
  ret void
}

declare dso_local i32 @Update_c0divstart(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_c1divstart(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_c1stop(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_c0stop(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_readout_0(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_event0(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_readout_1(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_event1(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_c2divstart(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_c3divstart(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_c3stop(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_c2stop(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_readout_2(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_event2(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_readout_3(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_event3(%struct.TYPE_21__*) #1

declare dso_local i32 @Update_audctl(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @Update_skctl(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

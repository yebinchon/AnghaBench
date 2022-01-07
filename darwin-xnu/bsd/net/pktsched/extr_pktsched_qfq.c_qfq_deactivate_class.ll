; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_deactivate_class.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_deactivate_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i64*, i32 }
%struct.qfq_class = type { i32, i32, i32, i32, %struct.qfq_group* }
%struct.qfq_group = type { i64, i64, i64, i64, i64, i64, i32* }

@pktsched_verbose = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"%s: %s deactivate qid=%d grp=%d full_slots=0x%x front=%d bitmaps={ER=0x%x,EB=0x%x,IR=0x%x,IB=0x%x}\0A\00", align 1
@ER = common dso_local global i64 0, align 8
@EB = common dso_local global i64 0, align 8
@IR = common dso_local global i64 0, align 8
@IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_if*, %struct.qfq_class*)* @qfq_deactivate_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_deactivate_class(%struct.qfq_if* %0, %struct.qfq_class* %1) #0 {
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca %struct.qfq_class*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %3, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %4, align 8
  %9 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %10 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %9, i32 0, i32 4
  %11 = load %struct.qfq_group*, %struct.qfq_group** %10, align 8
  store %struct.qfq_group* %11, %struct.qfq_group** %5, align 8
  %12 = load i32, i32* @pktsched_verbose, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %2
  %15 = load i32, i32* @LOG_DEBUG, align 4
  %16 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %17 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @QFQIF_IFP(i32 %18)
  %20 = call i32 @if_name(i32 %19)
  %21 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %22 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @qfq_style(i32 %23)
  %25 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %26 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %29 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %32 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %35 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %38 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @ER, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %44 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @EB, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %50 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @IR, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %56 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @IB, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @log(i32 %15, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %27, i64 %30, i64 %33, i64 %36, i64 %42, i64 %48, i64 %54, i64 %60)
  br label %62

62:                                               ; preds = %14, %2
  %63 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %64 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %67 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %69 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %70 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %71 = call i32 @qfq_slot_remove(%struct.qfq_if* %68, %struct.qfq_group* %69, %struct.qfq_class* %70)
  %72 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %73 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %174

76:                                               ; preds = %62
  %77 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %78 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %81 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @IR, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = call i32 @pktsched_bit_clr(i64 %79, i64* %84)
  %86 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %87 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %90 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* @EB, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = call i32 @pktsched_bit_clr(i64 %88, i64* %93)
  %95 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %96 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %99 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @IB, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = call i32 @pktsched_bit_clr(i64 %97, i64* %102)
  %104 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %105 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %108 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @ER, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = call i64 @pktsched_bit_tst(i64 %106, i64* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %164

114:                                              ; preds = %76
  %115 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %116 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @ER, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %122 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = shl i64 1, %123
  %125 = sub i64 %124, 1
  %126 = xor i64 %125, -1
  %127 = and i64 %120, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %164, label %129

129:                                              ; preds = %114
  %130 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %131 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* @ER, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %137 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = shl i64 1, %138
  %140 = sub i64 %139, 1
  %141 = and i64 %135, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %129
  %146 = load i32, i32* %6, align 4
  %147 = call i64 @__fls(i32 %146)
  %148 = shl i64 1, %147
  %149 = sub i64 %148, 1
  %150 = xor i64 %149, -1
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %6, align 4
  br label %153

152:                                              ; preds = %129
  store i32 -1, i32* %6, align 4
  br label %153

153:                                              ; preds = %152, %145
  %154 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i64, i64* @EB, align 8
  %157 = load i64, i64* @ER, align 8
  %158 = call i32 @qfq_move_groups(%struct.qfq_if* %154, i32 %155, i64 %156, i64 %157)
  %159 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i64, i64* @IB, align 8
  %162 = load i64, i64* @IR, align 8
  %163 = call i32 @qfq_move_groups(%struct.qfq_if* %159, i32 %160, i64 %161, i64 %162)
  br label %164

164:                                              ; preds = %153, %114, %76
  %165 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %166 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %169 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* @ER, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = call i32 @pktsched_bit_clr(i64 %167, i64* %172)
  br label %263

174:                                              ; preds = %62
  %175 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %176 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %179 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %262, label %184

184:                                              ; preds = %174
  %185 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %186 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %187 = call %struct.qfq_class* @qfq_slot_scan(%struct.qfq_if* %185, %struct.qfq_group* %186)
  store %struct.qfq_class* %187, %struct.qfq_class** %4, align 8
  %188 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %189 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %192 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @qfq_round_down(i32 %190, i64 %193)
  store i64 %194, i64* %7, align 8
  %195 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %196 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %7, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %261

200:                                              ; preds = %184
  %201 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %202 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %205 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* @ER, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = call i32 @pktsched_bit_clr(i64 %203, i64* %208)
  %210 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %211 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %214 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load i64, i64* @IR, align 8
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  %218 = call i32 @pktsched_bit_clr(i64 %212, i64* %217)
  %219 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %220 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %223 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load i64, i64* @EB, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  %227 = call i32 @pktsched_bit_clr(i64 %221, i64* %226)
  %228 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %229 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %232 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %231, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = load i64, i64* @IB, align 8
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  %236 = call i32 @pktsched_bit_clr(i64 %230, i64* %235)
  %237 = load i64, i64* %7, align 8
  %238 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %239 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %238, i32 0, i32 4
  store i64 %237, i64* %239, align 8
  %240 = load i64, i64* %7, align 8
  %241 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %242 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = shl i64 2, %243
  %245 = add i64 %240, %244
  %246 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %247 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %246, i32 0, i32 5
  store i64 %245, i64* %247, align 8
  %248 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %249 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %250 = call i32 @qfq_calc_state(%struct.qfq_if* %248, %struct.qfq_group* %249)
  store i32 %250, i32* %8, align 4
  %251 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %252 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %255 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %254, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = call i32 @pktsched_bit_set(i64 %253, i64* %259)
  br label %261

261:                                              ; preds = %200, %184
  br label %262

262:                                              ; preds = %261, %174
  br label %263

263:                                              ; preds = %262, %164
  %264 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %265 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %266 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @qfq_update_eligible(%struct.qfq_if* %264, i32 %267)
  ret void
}

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @QFQIF_IFP(i32) #1

declare dso_local i32 @qfq_style(i32) #1

declare dso_local i32 @qfq_slot_remove(%struct.qfq_if*, %struct.qfq_group*, %struct.qfq_class*) #1

declare dso_local i32 @pktsched_bit_clr(i64, i64*) #1

declare dso_local i64 @pktsched_bit_tst(i64, i64*) #1

declare dso_local i64 @__fls(i32) #1

declare dso_local i32 @qfq_move_groups(%struct.qfq_if*, i32, i64, i64) #1

declare dso_local %struct.qfq_class* @qfq_slot_scan(%struct.qfq_if*, %struct.qfq_group*) #1

declare dso_local i64 @qfq_round_down(i32, i64) #1

declare dso_local i32 @qfq_calc_state(%struct.qfq_if*, %struct.qfq_group*) #1

declare dso_local i32 @pktsched_bit_set(i64, i64*) #1

declare dso_local i32 @qfq_update_eligible(%struct.qfq_if*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

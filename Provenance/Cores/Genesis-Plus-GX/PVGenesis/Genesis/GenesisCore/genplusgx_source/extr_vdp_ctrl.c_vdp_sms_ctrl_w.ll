; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_sms_ctrl_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_sms_ctrl_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@pending = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@addr_latch = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@vram = common dso_local global i32* null, align 8
@fifo = common dso_local global i32* null, align 8
@reg = common dso_local global i32* null, align 8
@Z80 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_SMS = common dso_local global i64 0, align 8
@vc_table = common dso_local global i32** null, align 8
@vdp_pal = common dso_local global i64 0, align 8
@vc_max = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@status = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SYSTEM_GG = common dso_local global i64 0, align 8
@render_bg_m0 = common dso_local global i32 0, align 4
@render_bg = common dso_local global i32 0, align 4
@render_bg_m1 = common dso_local global i32 0, align 4
@render_bg_m2 = common dso_local global i32 0, align 4
@render_bg_m1x = common dso_local global i32 0, align 4
@render_bg_m3 = common dso_local global i32 0, align 4
@render_bg_inv = common dso_local global i32 0, align 4
@render_bg_m3x = common dso_local global i32 0, align 4
@render_bg_m4 = common dso_local global i32 0, align 4
@parse_satb_m4 = common dso_local global i32 0, align 4
@parse_satb = common dso_local global i32 0, align 4
@render_obj_m4 = common dso_local global i32 0, align 4
@render_obj = common dso_local global i32 0, align 4
@bg_list_index = common dso_local global i32 0, align 4
@parse_satb_tms = common dso_local global i32 0, align 4
@render_obj_tms = common dso_local global i32 0, align 4
@cram = common dso_local global i32* null, align 8
@bordrr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdp_sms_ctrl_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @pending, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @addr, align 4
  %11 = and i32 %10, 16128
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 255
  %14 = or i32 %11, %13
  store i32 %14, i32* @addr, align 4
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* @addr_latch, align 4
  store i32 1, i32* @pending, align 4
  br label %207

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = lshr i32 %17, 6
  %19 = and i32 %18, 3
  store i32 %19, i32* @code, align 4
  %20 = load i32, i32* %2, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* @addr_latch, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %23, 16383
  store i32 %24, i32* @addr, align 4
  store i32 0, i32* @pending, align 4
  %25 = load i32, i32* @code, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %16
  %28 = load i32*, i32** @vram, align 8
  %29 = load i32, i32* @addr, align 4
  %30 = and i32 %29, 16383
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @fifo, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @addr, align 4
  %37 = add nsw i32 %36, 1
  %38 = and i32 %37, 16383
  store i32 %38, i32* @addr, align 4
  br label %207

39:                                               ; preds = %16
  %40 = load i32, i32* @code, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %206

42:                                               ; preds = %39
  %43 = load i32*, i32** @reg, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 6
  %47 = load i32*, i32** @reg, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 24
  %51 = or i32 %46, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %2, align 4
  %53 = and i32 %52, 15
  %54 = load i32, i32* @addr_latch, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Z80, i32 0, i32 0), align 4
  %56 = call i32 @vdp_reg_w(i32 %53, i32 %54, i32 %55)
  %57 = load i32*, i32** @reg, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 6
  %61 = load i32*, i32** @reg, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 24
  %65 = or i32 %60, %64
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = xor i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %205

71:                                               ; preds = %42
  %72 = load i64, i64* @system_hw, align 8
  %73 = load i64, i64* @SYSTEM_SMS, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %144

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 14
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  store i32 240, i32* %5, align 4
  %79 = load i32**, i32*** @vc_table, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @vdp_pal, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* @vc_max, align 4
  br label %103

85:                                               ; preds = %75
  %86 = load i32, i32* %3, align 4
  %87 = icmp eq i32 %86, 22
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  store i32 224, i32* %5, align 4
  %89 = load i32**, i32*** @vc_table, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @vdp_pal, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* @vc_max, align 4
  br label %102

95:                                               ; preds = %85
  store i32 192, i32* %5, align 4
  %96 = load i32**, i32*** @vc_table, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @vdp_pal, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* @vc_max, align 4
  br label %102

102:                                              ; preds = %95, %88
  br label %103

103:                                              ; preds = %102, %78
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 0), align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %103
  %108 = load i32, i32* @status, align 4
  %109 = and i32 %108, 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 1), align 4
  %113 = or i32 %112, 2
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 1), align 4
  br label %142

114:                                              ; preds = %107
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 0), align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load i64, i64* @vdp_pal, align 8
  %121 = mul i64 48, %120
  %122 = add i64 240, %121
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 %122, %124
  %126 = lshr i64 %125, 1
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 2), align 4
  br label %141

128:                                              ; preds = %114
  %129 = load i64, i64* @system_hw, align 8
  %130 = load i64, i64* @SYSTEM_GG, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = sub nsw i32 144, %136
  %138 = sdiv i32 %137, 2
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 2), align 4
  br label %140

139:                                              ; preds = %132, %128
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 2), align 4
  br label %140

140:                                              ; preds = %139, %135
  br label %141

141:                                              ; preds = %140, %119
  br label %142

142:                                              ; preds = %141, %111
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143, %71
  %145 = load i32, i32* %3, align 4
  switch i32 %145, label %162 [
    i32 0, label %146
    i32 16, label %148
    i32 2, label %150
    i32 18, label %152
    i32 8, label %154
    i32 24, label %156
    i32 10, label %158
    i32 26, label %160
  ]

146:                                              ; preds = %144
  %147 = load i32, i32* @render_bg_m0, align 4
  store i32 %147, i32* @render_bg, align 4
  br label %164

148:                                              ; preds = %144
  %149 = load i32, i32* @render_bg_m1, align 4
  store i32 %149, i32* @render_bg, align 4
  br label %164

150:                                              ; preds = %144
  %151 = load i32, i32* @render_bg_m2, align 4
  store i32 %151, i32* @render_bg, align 4
  br label %164

152:                                              ; preds = %144
  %153 = load i32, i32* @render_bg_m1x, align 4
  store i32 %153, i32* @render_bg, align 4
  br label %164

154:                                              ; preds = %144
  %155 = load i32, i32* @render_bg_m3, align 4
  store i32 %155, i32* @render_bg, align 4
  br label %164

156:                                              ; preds = %144
  %157 = load i32, i32* @render_bg_inv, align 4
  store i32 %157, i32* @render_bg, align 4
  br label %164

158:                                              ; preds = %144
  %159 = load i32, i32* @render_bg_m3x, align 4
  store i32 %159, i32* @render_bg, align 4
  br label %164

160:                                              ; preds = %144
  %161 = load i32, i32* @render_bg_inv, align 4
  store i32 %161, i32* @render_bg, align 4
  br label %164

162:                                              ; preds = %144
  %163 = load i32, i32* @render_bg_m4, align 4
  store i32 %163, i32* @render_bg, align 4
  br label %164

164:                                              ; preds = %162, %160, %158, %156, %154, %152, %150, %148, %146
  %165 = load i32, i32* %4, align 4
  %166 = and i32 %165, 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %204

168:                                              ; preds = %164
  %169 = load i32, i32* %3, align 4
  %170 = and i32 %169, 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @parse_satb_m4, align 4
  store i32 %173, i32* @parse_satb, align 4
  %174 = load i32, i32* @render_obj_m4, align 4
  store i32 %174, i32* @render_obj, align 4
  store i32 512, i32* @bg_list_index, align 4
  br label %178

175:                                              ; preds = %168
  %176 = load i32, i32* @parse_satb_tms, align 4
  store i32 %176, i32* @parse_satb, align 4
  %177 = load i32, i32* @render_obj_tms, align 4
  store i32 %177, i32* @render_obj, align 4
  store i32 0, i32* @bg_list_index, align 4
  br label %178

178:                                              ; preds = %175, %172
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %191, %178
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 32
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = load i32, i32* %6, align 4
  %184 = load i32*, i32** @cram, align 8
  %185 = load i32, i32* %6, align 4
  %186 = shl i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @color_update_m4(i32 %183, i32 %189)
  br label %191

191:                                              ; preds = %182
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %179

194:                                              ; preds = %179
  %195 = load i32*, i32** @cram, align 8
  %196 = load i32, i32* @bordrr, align 4
  %197 = and i32 %196, 15
  %198 = or i32 16, %197
  %199 = shl i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @color_update_m4(i32 64, i32 %202)
  br label %204

204:                                              ; preds = %194, %164
  br label %205

205:                                              ; preds = %204, %42
  br label %206

206:                                              ; preds = %205, %39
  br label %207

207:                                              ; preds = %27, %206, %9
  ret void
}

declare dso_local i32 @vdp_reg_w(i32, i32, i32) #1

declare dso_local i32 @color_update_m4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

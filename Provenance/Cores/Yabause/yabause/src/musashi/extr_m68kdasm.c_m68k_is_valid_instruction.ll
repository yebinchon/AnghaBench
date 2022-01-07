; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_m68k_is_valid_instruction.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_m68k_is_valid_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_initialized = common dso_local global i32 0, align 4
@g_instruction_table = common dso_local global i64* null, align 8
@d68000_illegal = common dso_local global i64 0, align 8
@d68010_bkpt = common dso_local global i64 0, align 8
@d68010_move_fr_ccr = common dso_local global i64 0, align 8
@d68010_movec = common dso_local global i64 0, align 8
@d68010_moves_8 = common dso_local global i64 0, align 8
@d68010_moves_16 = common dso_local global i64 0, align 8
@d68010_moves_32 = common dso_local global i64 0, align 8
@d68010_rtd = common dso_local global i64 0, align 8
@d68020_bcc_32 = common dso_local global i64 0, align 8
@d68020_bfchg = common dso_local global i64 0, align 8
@d68020_bfclr = common dso_local global i64 0, align 8
@d68020_bfexts = common dso_local global i64 0, align 8
@d68020_bfextu = common dso_local global i64 0, align 8
@d68020_bfffo = common dso_local global i64 0, align 8
@d68020_bfins = common dso_local global i64 0, align 8
@d68020_bfset = common dso_local global i64 0, align 8
@d68020_bftst = common dso_local global i64 0, align 8
@d68020_bra_32 = common dso_local global i64 0, align 8
@d68020_bsr_32 = common dso_local global i64 0, align 8
@d68020_callm = common dso_local global i64 0, align 8
@d68020_cas_8 = common dso_local global i64 0, align 8
@d68020_cas_16 = common dso_local global i64 0, align 8
@d68020_cas_32 = common dso_local global i64 0, align 8
@d68020_cas2_16 = common dso_local global i64 0, align 8
@d68020_cas2_32 = common dso_local global i64 0, align 8
@d68020_chk_32 = common dso_local global i64 0, align 8
@d68020_chk2_cmp2_8 = common dso_local global i64 0, align 8
@d68020_chk2_cmp2_16 = common dso_local global i64 0, align 8
@d68020_chk2_cmp2_32 = common dso_local global i64 0, align 8
@d68020_cmpi_pcdi_8 = common dso_local global i64 0, align 8
@d68020_cmpi_pcix_8 = common dso_local global i64 0, align 8
@d68020_cmpi_pcdi_16 = common dso_local global i64 0, align 8
@d68020_cmpi_pcix_16 = common dso_local global i64 0, align 8
@d68020_cmpi_pcdi_32 = common dso_local global i64 0, align 8
@d68020_cmpi_pcix_32 = common dso_local global i64 0, align 8
@d68020_cpbcc_16 = common dso_local global i64 0, align 8
@d68020_cpbcc_32 = common dso_local global i64 0, align 8
@d68020_cpdbcc = common dso_local global i64 0, align 8
@d68020_cpgen = common dso_local global i64 0, align 8
@d68020_cprestore = common dso_local global i64 0, align 8
@d68020_cpsave = common dso_local global i64 0, align 8
@d68020_cpscc = common dso_local global i64 0, align 8
@d68020_cptrapcc_0 = common dso_local global i64 0, align 8
@d68020_cptrapcc_16 = common dso_local global i64 0, align 8
@d68020_cptrapcc_32 = common dso_local global i64 0, align 8
@d68020_divl = common dso_local global i64 0, align 8
@d68020_extb_32 = common dso_local global i64 0, align 8
@d68020_link_32 = common dso_local global i64 0, align 8
@d68020_mull = common dso_local global i64 0, align 8
@d68020_pack_rr = common dso_local global i64 0, align 8
@d68020_pack_mm = common dso_local global i64 0, align 8
@d68020_rtm = common dso_local global i64 0, align 8
@d68020_trapcc_0 = common dso_local global i64 0, align 8
@d68020_trapcc_16 = common dso_local global i64 0, align 8
@d68020_trapcc_32 = common dso_local global i64 0, align 8
@d68020_tst_pcdi_8 = common dso_local global i64 0, align 8
@d68020_tst_pcix_8 = common dso_local global i64 0, align 8
@d68020_tst_i_8 = common dso_local global i64 0, align 8
@d68020_tst_a_16 = common dso_local global i64 0, align 8
@d68020_tst_pcdi_16 = common dso_local global i64 0, align 8
@d68020_tst_pcix_16 = common dso_local global i64 0, align 8
@d68020_tst_i_16 = common dso_local global i64 0, align 8
@d68020_tst_a_32 = common dso_local global i64 0, align 8
@d68020_tst_pcdi_32 = common dso_local global i64 0, align 8
@d68020_tst_pcix_32 = common dso_local global i64 0, align 8
@d68020_tst_i_32 = common dso_local global i64 0, align 8
@d68020_unpk_rr = common dso_local global i64 0, align 8
@d68020_unpk_mm = common dso_local global i64 0, align 8
@d68040_cinv = common dso_local global i64 0, align 8
@d68040_cpush = common dso_local global i64 0, align 8
@d68040_move16_pi_pi = common dso_local global i64 0, align 8
@d68040_move16_pi_al = common dso_local global i64 0, align 8
@d68040_move16_al_pi = common dso_local global i64 0, align 8
@d68040_move16_ai_al = common dso_local global i64 0, align 8
@d68040_move16_al_ai = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m68k_is_valid_instruction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @g_initialized, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 (...) @build_opcode_table()
  store i32 1, i32* @g_initialized, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 65535
  store i32 %12, i32* %4, align 4
  %13 = load i64*, i64** @g_instruction_table, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @d68000_illegal, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %716

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %692 [
    i32 132, label %23
    i32 131, label %87
    i32 128, label %628
    i32 130, label %628
    i32 129, label %628
  ]

23:                                               ; preds = %21
  %24 = load i64*, i64** @g_instruction_table, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @d68010_bkpt, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %716

32:                                               ; preds = %23
  %33 = load i64*, i64** @g_instruction_table, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @d68010_move_fr_ccr, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %716

41:                                               ; preds = %32
  %42 = load i64*, i64** @g_instruction_table, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @d68010_movec, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %716

50:                                               ; preds = %41
  %51 = load i64*, i64** @g_instruction_table, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @d68010_moves_8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %716

59:                                               ; preds = %50
  %60 = load i64*, i64** @g_instruction_table, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @d68010_moves_16, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %716

68:                                               ; preds = %59
  %69 = load i64*, i64** @g_instruction_table, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @d68010_moves_32, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %716

77:                                               ; preds = %68
  %78 = load i64*, i64** @g_instruction_table, align 8
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @d68010_rtd, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %716

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %21, %86
  %88 = load i64*, i64** @g_instruction_table, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @d68020_bcc_32, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %716

96:                                               ; preds = %87
  %97 = load i64*, i64** @g_instruction_table, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @d68020_bfchg, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %716

105:                                              ; preds = %96
  %106 = load i64*, i64** @g_instruction_table, align 8
  %107 = load i32, i32* %4, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @d68020_bfclr, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %716

114:                                              ; preds = %105
  %115 = load i64*, i64** @g_instruction_table, align 8
  %116 = load i32, i32* %4, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @d68020_bfexts, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %716

123:                                              ; preds = %114
  %124 = load i64*, i64** @g_instruction_table, align 8
  %125 = load i32, i32* %4, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @d68020_bfextu, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %716

132:                                              ; preds = %123
  %133 = load i64*, i64** @g_instruction_table, align 8
  %134 = load i32, i32* %4, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @d68020_bfffo, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %716

141:                                              ; preds = %132
  %142 = load i64*, i64** @g_instruction_table, align 8
  %143 = load i32, i32* %4, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @d68020_bfins, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %716

150:                                              ; preds = %141
  %151 = load i64*, i64** @g_instruction_table, align 8
  %152 = load i32, i32* %4, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @d68020_bfset, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %716

159:                                              ; preds = %150
  %160 = load i64*, i64** @g_instruction_table, align 8
  %161 = load i32, i32* %4, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @d68020_bftst, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %716

168:                                              ; preds = %159
  %169 = load i64*, i64** @g_instruction_table, align 8
  %170 = load i32, i32* %4, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @d68020_bra_32, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %716

177:                                              ; preds = %168
  %178 = load i64*, i64** @g_instruction_table, align 8
  %179 = load i32, i32* %4, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @d68020_bsr_32, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %716

186:                                              ; preds = %177
  %187 = load i64*, i64** @g_instruction_table, align 8
  %188 = load i32, i32* %4, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @d68020_callm, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %716

195:                                              ; preds = %186
  %196 = load i64*, i64** @g_instruction_table, align 8
  %197 = load i32, i32* %4, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @d68020_cas_8, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %716

204:                                              ; preds = %195
  %205 = load i64*, i64** @g_instruction_table, align 8
  %206 = load i32, i32* %4, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @d68020_cas_16, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %716

213:                                              ; preds = %204
  %214 = load i64*, i64** @g_instruction_table, align 8
  %215 = load i32, i32* %4, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @d68020_cas_32, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  store i32 0, i32* %3, align 4
  br label %716

222:                                              ; preds = %213
  %223 = load i64*, i64** @g_instruction_table, align 8
  %224 = load i32, i32* %4, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @d68020_cas2_16, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  store i32 0, i32* %3, align 4
  br label %716

231:                                              ; preds = %222
  %232 = load i64*, i64** @g_instruction_table, align 8
  %233 = load i32, i32* %4, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @d68020_cas2_32, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %716

240:                                              ; preds = %231
  %241 = load i64*, i64** @g_instruction_table, align 8
  %242 = load i32, i32* %4, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @d68020_chk_32, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  br label %716

249:                                              ; preds = %240
  %250 = load i64*, i64** @g_instruction_table, align 8
  %251 = load i32, i32* %4, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @d68020_chk2_cmp2_8, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %249
  store i32 0, i32* %3, align 4
  br label %716

258:                                              ; preds = %249
  %259 = load i64*, i64** @g_instruction_table, align 8
  %260 = load i32, i32* %4, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @d68020_chk2_cmp2_16, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  store i32 0, i32* %3, align 4
  br label %716

267:                                              ; preds = %258
  %268 = load i64*, i64** @g_instruction_table, align 8
  %269 = load i32, i32* %4, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @d68020_chk2_cmp2_32, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  store i32 0, i32* %3, align 4
  br label %716

276:                                              ; preds = %267
  %277 = load i64*, i64** @g_instruction_table, align 8
  %278 = load i32, i32* %4, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @d68020_cmpi_pcdi_8, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  store i32 0, i32* %3, align 4
  br label %716

285:                                              ; preds = %276
  %286 = load i64*, i64** @g_instruction_table, align 8
  %287 = load i32, i32* %4, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @d68020_cmpi_pcix_8, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %285
  store i32 0, i32* %3, align 4
  br label %716

294:                                              ; preds = %285
  %295 = load i64*, i64** @g_instruction_table, align 8
  %296 = load i32, i32* %4, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @d68020_cmpi_pcdi_16, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  store i32 0, i32* %3, align 4
  br label %716

303:                                              ; preds = %294
  %304 = load i64*, i64** @g_instruction_table, align 8
  %305 = load i32, i32* %4, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @d68020_cmpi_pcix_16, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %303
  store i32 0, i32* %3, align 4
  br label %716

312:                                              ; preds = %303
  %313 = load i64*, i64** @g_instruction_table, align 8
  %314 = load i32, i32* %4, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %313, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @d68020_cmpi_pcdi_32, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %312
  store i32 0, i32* %3, align 4
  br label %716

321:                                              ; preds = %312
  %322 = load i64*, i64** @g_instruction_table, align 8
  %323 = load i32, i32* %4, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @d68020_cmpi_pcix_32, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %321
  store i32 0, i32* %3, align 4
  br label %716

330:                                              ; preds = %321
  %331 = load i64*, i64** @g_instruction_table, align 8
  %332 = load i32, i32* %4, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %331, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @d68020_cpbcc_16, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %330
  store i32 0, i32* %3, align 4
  br label %716

339:                                              ; preds = %330
  %340 = load i64*, i64** @g_instruction_table, align 8
  %341 = load i32, i32* %4, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i64, i64* %340, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @d68020_cpbcc_32, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %339
  store i32 0, i32* %3, align 4
  br label %716

348:                                              ; preds = %339
  %349 = load i64*, i64** @g_instruction_table, align 8
  %350 = load i32, i32* %4, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i64, i64* %349, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @d68020_cpdbcc, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %348
  store i32 0, i32* %3, align 4
  br label %716

357:                                              ; preds = %348
  %358 = load i64*, i64** @g_instruction_table, align 8
  %359 = load i32, i32* %4, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %358, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @d68020_cpgen, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %357
  store i32 0, i32* %3, align 4
  br label %716

366:                                              ; preds = %357
  %367 = load i64*, i64** @g_instruction_table, align 8
  %368 = load i32, i32* %4, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @d68020_cprestore, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %366
  store i32 0, i32* %3, align 4
  br label %716

375:                                              ; preds = %366
  %376 = load i64*, i64** @g_instruction_table, align 8
  %377 = load i32, i32* %4, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %376, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @d68020_cpsave, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %375
  store i32 0, i32* %3, align 4
  br label %716

384:                                              ; preds = %375
  %385 = load i64*, i64** @g_instruction_table, align 8
  %386 = load i32, i32* %4, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @d68020_cpscc, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %384
  store i32 0, i32* %3, align 4
  br label %716

393:                                              ; preds = %384
  %394 = load i64*, i64** @g_instruction_table, align 8
  %395 = load i32, i32* %4, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds i64, i64* %394, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @d68020_cptrapcc_0, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %393
  store i32 0, i32* %3, align 4
  br label %716

402:                                              ; preds = %393
  %403 = load i64*, i64** @g_instruction_table, align 8
  %404 = load i32, i32* %4, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds i64, i64* %403, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @d68020_cptrapcc_16, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %402
  store i32 0, i32* %3, align 4
  br label %716

411:                                              ; preds = %402
  %412 = load i64*, i64** @g_instruction_table, align 8
  %413 = load i32, i32* %4, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds i64, i64* %412, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @d68020_cptrapcc_32, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %411
  store i32 0, i32* %3, align 4
  br label %716

420:                                              ; preds = %411
  %421 = load i64*, i64** @g_instruction_table, align 8
  %422 = load i32, i32* %4, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds i64, i64* %421, i64 %423
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @d68020_divl, align 8
  %427 = icmp eq i64 %425, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %420
  store i32 0, i32* %3, align 4
  br label %716

429:                                              ; preds = %420
  %430 = load i64*, i64** @g_instruction_table, align 8
  %431 = load i32, i32* %4, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds i64, i64* %430, i64 %432
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @d68020_extb_32, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %438

437:                                              ; preds = %429
  store i32 0, i32* %3, align 4
  br label %716

438:                                              ; preds = %429
  %439 = load i64*, i64** @g_instruction_table, align 8
  %440 = load i32, i32* %4, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds i64, i64* %439, i64 %441
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @d68020_link_32, align 8
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %446, label %447

446:                                              ; preds = %438
  store i32 0, i32* %3, align 4
  br label %716

447:                                              ; preds = %438
  %448 = load i64*, i64** @g_instruction_table, align 8
  %449 = load i32, i32* %4, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds i64, i64* %448, i64 %450
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @d68020_mull, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %447
  store i32 0, i32* %3, align 4
  br label %716

456:                                              ; preds = %447
  %457 = load i64*, i64** @g_instruction_table, align 8
  %458 = load i32, i32* %4, align 4
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds i64, i64* %457, i64 %459
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @d68020_pack_rr, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %465

464:                                              ; preds = %456
  store i32 0, i32* %3, align 4
  br label %716

465:                                              ; preds = %456
  %466 = load i64*, i64** @g_instruction_table, align 8
  %467 = load i32, i32* %4, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds i64, i64* %466, i64 %468
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @d68020_pack_mm, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %474

473:                                              ; preds = %465
  store i32 0, i32* %3, align 4
  br label %716

474:                                              ; preds = %465
  %475 = load i64*, i64** @g_instruction_table, align 8
  %476 = load i32, i32* %4, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds i64, i64* %475, i64 %477
  %479 = load i64, i64* %478, align 8
  %480 = load i64, i64* @d68020_rtm, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %474
  store i32 0, i32* %3, align 4
  br label %716

483:                                              ; preds = %474
  %484 = load i64*, i64** @g_instruction_table, align 8
  %485 = load i32, i32* %4, align 4
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds i64, i64* %484, i64 %486
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @d68020_trapcc_0, align 8
  %490 = icmp eq i64 %488, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %483
  store i32 0, i32* %3, align 4
  br label %716

492:                                              ; preds = %483
  %493 = load i64*, i64** @g_instruction_table, align 8
  %494 = load i32, i32* %4, align 4
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds i64, i64* %493, i64 %495
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @d68020_trapcc_16, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %492
  store i32 0, i32* %3, align 4
  br label %716

501:                                              ; preds = %492
  %502 = load i64*, i64** @g_instruction_table, align 8
  %503 = load i32, i32* %4, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds i64, i64* %502, i64 %504
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @d68020_trapcc_32, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %501
  store i32 0, i32* %3, align 4
  br label %716

510:                                              ; preds = %501
  %511 = load i64*, i64** @g_instruction_table, align 8
  %512 = load i32, i32* %4, align 4
  %513 = zext i32 %512 to i64
  %514 = getelementptr inbounds i64, i64* %511, i64 %513
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @d68020_tst_pcdi_8, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %519

518:                                              ; preds = %510
  store i32 0, i32* %3, align 4
  br label %716

519:                                              ; preds = %510
  %520 = load i64*, i64** @g_instruction_table, align 8
  %521 = load i32, i32* %4, align 4
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds i64, i64* %520, i64 %522
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @d68020_tst_pcix_8, align 8
  %526 = icmp eq i64 %524, %525
  br i1 %526, label %527, label %528

527:                                              ; preds = %519
  store i32 0, i32* %3, align 4
  br label %716

528:                                              ; preds = %519
  %529 = load i64*, i64** @g_instruction_table, align 8
  %530 = load i32, i32* %4, align 4
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds i64, i64* %529, i64 %531
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* @d68020_tst_i_8, align 8
  %535 = icmp eq i64 %533, %534
  br i1 %535, label %536, label %537

536:                                              ; preds = %528
  store i32 0, i32* %3, align 4
  br label %716

537:                                              ; preds = %528
  %538 = load i64*, i64** @g_instruction_table, align 8
  %539 = load i32, i32* %4, align 4
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds i64, i64* %538, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @d68020_tst_a_16, align 8
  %544 = icmp eq i64 %542, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %537
  store i32 0, i32* %3, align 4
  br label %716

546:                                              ; preds = %537
  %547 = load i64*, i64** @g_instruction_table, align 8
  %548 = load i32, i32* %4, align 4
  %549 = zext i32 %548 to i64
  %550 = getelementptr inbounds i64, i64* %547, i64 %549
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @d68020_tst_pcdi_16, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %554, label %555

554:                                              ; preds = %546
  store i32 0, i32* %3, align 4
  br label %716

555:                                              ; preds = %546
  %556 = load i64*, i64** @g_instruction_table, align 8
  %557 = load i32, i32* %4, align 4
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds i64, i64* %556, i64 %558
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @d68020_tst_pcix_16, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %555
  store i32 0, i32* %3, align 4
  br label %716

564:                                              ; preds = %555
  %565 = load i64*, i64** @g_instruction_table, align 8
  %566 = load i32, i32* %4, align 4
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds i64, i64* %565, i64 %567
  %569 = load i64, i64* %568, align 8
  %570 = load i64, i64* @d68020_tst_i_16, align 8
  %571 = icmp eq i64 %569, %570
  br i1 %571, label %572, label %573

572:                                              ; preds = %564
  store i32 0, i32* %3, align 4
  br label %716

573:                                              ; preds = %564
  %574 = load i64*, i64** @g_instruction_table, align 8
  %575 = load i32, i32* %4, align 4
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds i64, i64* %574, i64 %576
  %578 = load i64, i64* %577, align 8
  %579 = load i64, i64* @d68020_tst_a_32, align 8
  %580 = icmp eq i64 %578, %579
  br i1 %580, label %581, label %582

581:                                              ; preds = %573
  store i32 0, i32* %3, align 4
  br label %716

582:                                              ; preds = %573
  %583 = load i64*, i64** @g_instruction_table, align 8
  %584 = load i32, i32* %4, align 4
  %585 = zext i32 %584 to i64
  %586 = getelementptr inbounds i64, i64* %583, i64 %585
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* @d68020_tst_pcdi_32, align 8
  %589 = icmp eq i64 %587, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %582
  store i32 0, i32* %3, align 4
  br label %716

591:                                              ; preds = %582
  %592 = load i64*, i64** @g_instruction_table, align 8
  %593 = load i32, i32* %4, align 4
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds i64, i64* %592, i64 %594
  %596 = load i64, i64* %595, align 8
  %597 = load i64, i64* @d68020_tst_pcix_32, align 8
  %598 = icmp eq i64 %596, %597
  br i1 %598, label %599, label %600

599:                                              ; preds = %591
  store i32 0, i32* %3, align 4
  br label %716

600:                                              ; preds = %591
  %601 = load i64*, i64** @g_instruction_table, align 8
  %602 = load i32, i32* %4, align 4
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds i64, i64* %601, i64 %603
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* @d68020_tst_i_32, align 8
  %607 = icmp eq i64 %605, %606
  br i1 %607, label %608, label %609

608:                                              ; preds = %600
  store i32 0, i32* %3, align 4
  br label %716

609:                                              ; preds = %600
  %610 = load i64*, i64** @g_instruction_table, align 8
  %611 = load i32, i32* %4, align 4
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds i64, i64* %610, i64 %612
  %614 = load i64, i64* %613, align 8
  %615 = load i64, i64* @d68020_unpk_rr, align 8
  %616 = icmp eq i64 %614, %615
  br i1 %616, label %617, label %618

617:                                              ; preds = %609
  store i32 0, i32* %3, align 4
  br label %716

618:                                              ; preds = %609
  %619 = load i64*, i64** @g_instruction_table, align 8
  %620 = load i32, i32* %4, align 4
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds i64, i64* %619, i64 %621
  %623 = load i64, i64* %622, align 8
  %624 = load i64, i64* @d68020_unpk_mm, align 8
  %625 = icmp eq i64 %623, %624
  br i1 %625, label %626, label %627

626:                                              ; preds = %618
  store i32 0, i32* %3, align 4
  br label %716

627:                                              ; preds = %618
  br label %628

628:                                              ; preds = %21, %21, %21, %627
  %629 = load i64*, i64** @g_instruction_table, align 8
  %630 = load i32, i32* %4, align 4
  %631 = zext i32 %630 to i64
  %632 = getelementptr inbounds i64, i64* %629, i64 %631
  %633 = load i64, i64* %632, align 8
  %634 = load i64, i64* @d68040_cinv, align 8
  %635 = icmp eq i64 %633, %634
  br i1 %635, label %636, label %637

636:                                              ; preds = %628
  store i32 0, i32* %3, align 4
  br label %716

637:                                              ; preds = %628
  %638 = load i64*, i64** @g_instruction_table, align 8
  %639 = load i32, i32* %4, align 4
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds i64, i64* %638, i64 %640
  %642 = load i64, i64* %641, align 8
  %643 = load i64, i64* @d68040_cpush, align 8
  %644 = icmp eq i64 %642, %643
  br i1 %644, label %645, label %646

645:                                              ; preds = %637
  store i32 0, i32* %3, align 4
  br label %716

646:                                              ; preds = %637
  %647 = load i64*, i64** @g_instruction_table, align 8
  %648 = load i32, i32* %4, align 4
  %649 = zext i32 %648 to i64
  %650 = getelementptr inbounds i64, i64* %647, i64 %649
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* @d68040_move16_pi_pi, align 8
  %653 = icmp eq i64 %651, %652
  br i1 %653, label %654, label %655

654:                                              ; preds = %646
  store i32 0, i32* %3, align 4
  br label %716

655:                                              ; preds = %646
  %656 = load i64*, i64** @g_instruction_table, align 8
  %657 = load i32, i32* %4, align 4
  %658 = zext i32 %657 to i64
  %659 = getelementptr inbounds i64, i64* %656, i64 %658
  %660 = load i64, i64* %659, align 8
  %661 = load i64, i64* @d68040_move16_pi_al, align 8
  %662 = icmp eq i64 %660, %661
  br i1 %662, label %663, label %664

663:                                              ; preds = %655
  store i32 0, i32* %3, align 4
  br label %716

664:                                              ; preds = %655
  %665 = load i64*, i64** @g_instruction_table, align 8
  %666 = load i32, i32* %4, align 4
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds i64, i64* %665, i64 %667
  %669 = load i64, i64* %668, align 8
  %670 = load i64, i64* @d68040_move16_al_pi, align 8
  %671 = icmp eq i64 %669, %670
  br i1 %671, label %672, label %673

672:                                              ; preds = %664
  store i32 0, i32* %3, align 4
  br label %716

673:                                              ; preds = %664
  %674 = load i64*, i64** @g_instruction_table, align 8
  %675 = load i32, i32* %4, align 4
  %676 = zext i32 %675 to i64
  %677 = getelementptr inbounds i64, i64* %674, i64 %676
  %678 = load i64, i64* %677, align 8
  %679 = load i64, i64* @d68040_move16_ai_al, align 8
  %680 = icmp eq i64 %678, %679
  br i1 %680, label %681, label %682

681:                                              ; preds = %673
  store i32 0, i32* %3, align 4
  br label %716

682:                                              ; preds = %673
  %683 = load i64*, i64** @g_instruction_table, align 8
  %684 = load i32, i32* %4, align 4
  %685 = zext i32 %684 to i64
  %686 = getelementptr inbounds i64, i64* %683, i64 %685
  %687 = load i64, i64* %686, align 8
  %688 = load i64, i64* @d68040_move16_al_ai, align 8
  %689 = icmp eq i64 %687, %688
  br i1 %689, label %690, label %691

690:                                              ; preds = %682
  store i32 0, i32* %3, align 4
  br label %716

691:                                              ; preds = %682
  br label %692

692:                                              ; preds = %691, %21
  %693 = load i32, i32* %5, align 4
  %694 = icmp ne i32 %693, 130
  br i1 %694, label %695, label %715

695:                                              ; preds = %692
  %696 = load i32, i32* %5, align 4
  %697 = icmp ne i32 %696, 128
  br i1 %697, label %698, label %715

698:                                              ; preds = %695
  %699 = load i64*, i64** @g_instruction_table, align 8
  %700 = load i32, i32* %4, align 4
  %701 = zext i32 %700 to i64
  %702 = getelementptr inbounds i64, i64* %699, i64 %701
  %703 = load i64, i64* %702, align 8
  %704 = load i64, i64* @d68020_callm, align 8
  %705 = icmp eq i64 %703, %704
  br i1 %705, label %714, label %706

706:                                              ; preds = %698
  %707 = load i64*, i64** @g_instruction_table, align 8
  %708 = load i32, i32* %4, align 4
  %709 = zext i32 %708 to i64
  %710 = getelementptr inbounds i64, i64* %707, i64 %709
  %711 = load i64, i64* %710, align 8
  %712 = load i64, i64* @d68020_rtm, align 8
  %713 = icmp eq i64 %711, %712
  br i1 %713, label %714, label %715

714:                                              ; preds = %706, %698
  store i32 0, i32* %3, align 4
  br label %716

715:                                              ; preds = %706, %695, %692
  store i32 1, i32* %3, align 4
  br label %716

716:                                              ; preds = %715, %714, %690, %681, %672, %663, %654, %645, %636, %626, %617, %608, %599, %590, %581, %572, %563, %554, %545, %536, %527, %518, %509, %500, %491, %482, %473, %464, %455, %446, %437, %428, %419, %410, %401, %392, %383, %374, %365, %356, %347, %338, %329, %320, %311, %302, %293, %284, %275, %266, %257, %248, %239, %230, %221, %212, %203, %194, %185, %176, %167, %158, %149, %140, %131, %122, %113, %104, %95, %85, %76, %67, %58, %49, %40, %31, %20
  %717 = load i32, i32* %3, align 4
  ret i32 %717
}

declare dso_local i32 @build_opcode_table(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

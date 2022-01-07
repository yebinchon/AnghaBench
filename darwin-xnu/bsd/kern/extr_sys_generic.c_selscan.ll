; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selscan.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_selscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32*, %struct.fileproc** }
%struct.fileproc = type { i32, i64, i64, i32 }
%struct._select = type { i32*, i32* }
%struct._select_data = type { i32, i32* }
%struct.waitq_set = type { i32 }
%struct.vfs_context = type { i32 }
%struct.waitq = type { i32 }

@selscan.flag = internal global [3 x i32] [i32 129, i32 128, i32 0], align 4
@EIO = common dso_local global i32 0, align 4
@NFDBITS = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@SEL_SECONDPASS = common dso_local global i32 0, align 4
@FP_INSELECT = common dso_local global i32 0, align 4
@FP_SELCONFLICT = common dso_local global i32 0, align 4
@SEL_FIRSTPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct._select*, %struct._select_data*, i32, i32*, i32, %struct.waitq_set*)* @selscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selscan(%struct.proc* %0, %struct._select* %1, %struct._select_data* %2, i32 %3, i32* %4, i32 %5, %struct.waitq_set* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct._select*, align 8
  %11 = alloca %struct._select_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.waitq_set*, align 8
  %16 = alloca %struct.filedesc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.fileproc*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.vfs_context, align 4
  %34 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %9, align 8
  store %struct._select* %1, %struct._select** %10, align 8
  store %struct._select_data* %2, %struct._select_data** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.waitq_set* %6, %struct.waitq_set** %15, align 8
  %35 = load %struct.proc*, %struct.proc** %9, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 0
  %37 = load %struct.filedesc*, %struct.filedesc** %36, align 8
  store %struct.filedesc* %37, %struct.filedesc** %16, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i64* null, i64** %31, align 8
  %38 = call %struct.vfs_context* (...) @vfs_context_current()
  %39 = bitcast %struct.vfs_context* %33 to i8*
  %40 = bitcast %struct.vfs_context* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %42 = icmp eq %struct.filedesc* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %7
  %44 = load i32*, i32** %13, align 8
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @EIO, align 4
  store i32 %45, i32* %8, align 4
  br label %264

46:                                               ; preds = %7
  %47 = load %struct._select*, %struct._select** %10, align 8
  %48 = getelementptr inbounds %struct._select, %struct._select* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %28, align 8
  %50 = load %struct._select*, %struct._select** %10, align 8
  %51 = getelementptr inbounds %struct._select, %struct._select* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %29, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @NFDBITS, align 4
  %55 = call i32 @howmany(i32 %53, i32 %54)
  store i32 %55, i32* %27, align 4
  %56 = load %struct._select_data*, %struct._select_data** %11, align 8
  %57 = getelementptr inbounds %struct._select_data, %struct._select_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %32, align 4
  store i32 0, i32* %24, align 4
  %59 = load i32, i32* %32, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %46
  %62 = load i32*, i32** %13, align 8
  store i32 0, i32* %62, align 4
  store i32 0, i32* %8, align 4
  br label %264

63:                                               ; preds = %46
  %64 = load %struct.proc*, %struct.proc** %9, align 8
  %65 = call i32 @proc_fdlock(%struct.proc* %64)
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %256, %63
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %259

69:                                               ; preds = %66
  %70 = load i32*, i32** %28, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %27, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32* %75, i32** %25, align 8
  %76 = load i32*, i32** %29, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %27, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %26, align 8
  store i32 0, i32* %18, align 4
  br label %82

82:                                               ; preds = %251, %69
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %255

86:                                               ; preds = %82
  %87 = load i32*, i32** %25, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @NFDBITS, align 4
  %90 = sdiv i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %21, align 4
  br label %94

94:                                               ; preds = %247, %86
  %95 = load i32, i32* %21, align 4
  %96 = call i32 @ffs(i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %19, align 4
  %102 = add nsw i32 %99, %101
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %102, %103
  br label %105

105:                                              ; preds = %98, %94
  %106 = phi i1 [ false, %94 ], [ %104, %98 ]
  br i1 %106, label %107, label %250

107:                                              ; preds = %105
  %108 = load i32, i32* %19, align 4
  %109 = shl i32 1, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %21, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %115 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %120 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %119, i32 0, i32 2
  %121 = load %struct.fileproc**, %struct.fileproc*** %120, align 8
  %122 = load i32, i32* %20, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %121, i64 %123
  %125 = load %struct.fileproc*, %struct.fileproc** %124, align 8
  store %struct.fileproc* %125, %struct.fileproc** %22, align 8
  br label %127

126:                                              ; preds = %107
  store %struct.fileproc* null, %struct.fileproc** %22, align 8
  br label %127

127:                                              ; preds = %126, %118
  %128 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %129 = icmp eq %struct.fileproc* %128, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %127
  %131 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %132 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @UF_RESERVED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %130, %127
  %142 = load %struct.proc*, %struct.proc** %9, align 8
  %143 = call i32 @proc_fdunlock(%struct.proc* %142)
  %144 = load i32, i32* @EBADF, align 4
  store i32 %144, i32* %8, align 4
  br label %264

145:                                              ; preds = %130
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @SEL_SECONDPASS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  store i64 0, i64* %30, align 8
  store i64* null, i64** %31, align 8
  %150 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %151 = load %struct._select_data*, %struct._select_data** %11, align 8
  %152 = getelementptr inbounds %struct._select_data, %struct._select_data* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %24, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.waitq_set*, %struct.waitq_set** %15, align 8
  %159 = call i32 @selunlinkfp(%struct.fileproc* %150, i32 %157, %struct.waitq_set* %158)
  br label %185

160:                                              ; preds = %145
  %161 = load %struct.waitq_set*, %struct.waitq_set** %15, align 8
  %162 = bitcast %struct.waitq_set* %161 to %struct.waitq*
  %163 = call i64 @waitq_link_reserve(%struct.waitq* %162)
  store i64 %163, i64* %30, align 8
  store i64* %30, i64** %31, align 8
  %164 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %165 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @FP_INSELECT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %160
  %171 = load i32, i32* @FP_SELCONFLICT, align 4
  %172 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %173 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %182

176:                                              ; preds = %160
  %177 = load i32, i32* @FP_INSELECT, align 4
  %178 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %179 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %176, %170
  %183 = load %struct.waitq_set*, %struct.waitq_set** %15, align 8
  %184 = call i32 @waitq_set_lazy_init_link(%struct.waitq_set* %183)
  br label %185

185:                                              ; preds = %182, %149
  %186 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %187 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %33, i32 0, i32 0
  store i32 %188, i32* %189, align 4
  %190 = load i64, i64* %30, align 8
  store i64 %190, i64* %34, align 8
  %191 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %192 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %224

195:                                              ; preds = %185
  %196 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %197 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %224

200:                                              ; preds = %195
  %201 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* @selscan.flag, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i64*, i64** %31, align 8
  %207 = call i64 @fo_select(%struct.fileproc* %201, i32 %205, i64* %206, %struct.vfs_context* %33)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %200
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* @NFDBITS, align 4
  %212 = srem i32 %210, %211
  %213 = shl i32 1, %212
  %214 = load i32*, i32** %26, align 8
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* @NFDBITS, align 4
  %217 = sdiv i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %213
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* %23, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %23, align 4
  br label %224

224:                                              ; preds = %209, %200, %195, %185
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* @SEL_FIRSTPASS, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %247

228:                                              ; preds = %224
  %229 = load i64, i64* %34, align 8
  %230 = call i32 @waitq_link_release(i64 %229)
  %231 = load i64, i64* %30, align 8
  %232 = load i64, i64* %34, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i64* null, i64** %31, align 8
  br label %235

235:                                              ; preds = %234, %228
  %236 = load %struct.fileproc*, %struct.fileproc** %22, align 8
  %237 = load i64*, i64** %31, align 8
  %238 = bitcast i64* %237 to i8**
  %239 = load %struct.waitq_set*, %struct.waitq_set** %15, align 8
  %240 = call i32 @sellinkfp(%struct.fileproc* %236, i8** %238, %struct.waitq_set* %239)
  %241 = load %struct._select_data*, %struct._select_data** %11, align 8
  %242 = getelementptr inbounds %struct._select_data, %struct._select_data* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %24, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %240, i32* %246, align 4
  br label %247

247:                                              ; preds = %235, %224
  %248 = load i32, i32* %24, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %24, align 4
  br label %94

250:                                              ; preds = %105
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* @NFDBITS, align 4
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %18, align 4
  br label %82

255:                                              ; preds = %82
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  br label %66

259:                                              ; preds = %66
  %260 = load %struct.proc*, %struct.proc** %9, align 8
  %261 = call i32 @proc_fdunlock(%struct.proc* %260)
  %262 = load i32, i32* %23, align 4
  %263 = load i32*, i32** %13, align 8
  store i32 %262, i32* %263, align 4
  store i32 0, i32* %8, align 4
  br label %264

264:                                              ; preds = %259, %141, %61, %43
  %265 = load i32, i32* %8, align 4
  ret i32 %265
}

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @selunlinkfp(%struct.fileproc*, i32, %struct.waitq_set*) #1

declare dso_local i64 @waitq_link_reserve(%struct.waitq*) #1

declare dso_local i32 @waitq_set_lazy_init_link(%struct.waitq_set*) #1

declare dso_local i64 @fo_select(%struct.fileproc*, i32, i64*, %struct.vfs_context*) #1

declare dso_local i32 @waitq_link_release(i64) #1

declare dso_local i32 @sellinkfp(%struct.fileproc*, i8**, %struct.waitq_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

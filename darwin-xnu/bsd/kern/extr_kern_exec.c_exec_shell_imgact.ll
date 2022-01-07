; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_shell_imgact.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_shell_imgact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i8*, i32, i64, i32, i8*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fileproc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i32 }

@IMGPF_INTERPRET = common dso_local global i32 0, align 4
@sugid_scripts = common dso_local global i64 0, align 8
@VSUID = common dso_local global i32 0, align 4
@VSGID = common dso_local global i32 0, align 4
@IMG_SHSIZE = common dso_local global i64 0, align 8
@ENOEXEC = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@vnops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*)* @exec_shell_imgact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_shell_imgact(%struct.image_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fileproc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  %13 = load %struct.image_params*, %struct.image_params** %3, align 8
  %14 = getelementptr inbounds %struct.image_params, %struct.image_params* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 35
  br i1 %20, label %34, label %21

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 33
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load %struct.image_params*, %struct.image_params** %3, align 8
  %29 = getelementptr inbounds %struct.image_params, %struct.image_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IMGPF_INTERPRET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %21, %1
  store i32 -1, i32* %2, align 4
  br label %261

35:                                               ; preds = %27
  %36 = load %struct.image_params*, %struct.image_params** %3, align 8
  %37 = getelementptr inbounds %struct.image_params, %struct.image_params* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %261

41:                                               ; preds = %35
  %42 = load i32, i32* @IMGPF_INTERPRET, align 4
  %43 = load %struct.image_params*, %struct.image_params** %3, align 8
  %44 = getelementptr inbounds %struct.image_params, %struct.image_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.image_params*, %struct.image_params** %3, align 8
  %48 = getelementptr inbounds %struct.image_params, %struct.image_params* %47, i32 0, i32 3
  store i32 -1, i32* %48, align 8
  %49 = load %struct.image_params*, %struct.image_params** %3, align 8
  %50 = getelementptr inbounds %struct.image_params, %struct.image_params* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %52, align 1
  %53 = load i64, i64* @sugid_scripts, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load i32, i32* @VSUID, align 4
  %57 = load i32, i32* @VSGID, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.image_params*, %struct.image_params** %3, align 8
  %61 = getelementptr inbounds %struct.image_params, %struct.image_params* %60, i32 0, i32 7
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %59
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %55, %41
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8* %68, i8** %5, align 8
  br label %69

69:                                               ; preds = %91, %66
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* @IMG_SHSIZE, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = icmp ult i8* %70, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @IS_EOL(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @ENOEXEC, align 4
  store i32 %81, i32* %2, align 4
  br label %261

82:                                               ; preds = %75
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @IS_WHITESPACE(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %89

88:                                               ; preds = %82
  br label %94

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %5, align 8
  br label %69

94:                                               ; preds = %88, %69
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load i64, i64* @IMG_SHSIZE, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = icmp eq i8* %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @ENOEXEC, align 4
  store i32 %101, i32* %2, align 4
  br label %261

102:                                              ; preds = %94
  %103 = load i8*, i8** %5, align 8
  store i8* %103, i8** %6, align 8
  br label %104

104:                                              ; preds = %118, %102
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = load i64, i64* @IMG_SHSIZE, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = icmp ult i8* %105, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i8*, i8** %5, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i64 @IS_EOL(i8 signext %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %121

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %5, align 8
  br label %104

121:                                              ; preds = %115, %104
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = load i64, i64* @IMG_SHSIZE, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = icmp eq i8* %122, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @ENOEXEC, align 4
  store i32 %128, i32* %2, align 4
  br label %261

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %142, %129
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @IS_EOL(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i8*, i8** %5, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i64 @IS_WHITESPACE(i8 signext %137)
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %135, %130
  %141 = phi i1 [ true, %130 ], [ %139, %135 ]
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 -1
  store i8* %144, i8** %5, align 8
  br label %130

145:                                              ; preds = %140
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8* %147, i8** %7, align 8
  %148 = load %struct.image_params*, %struct.image_params** %3, align 8
  %149 = getelementptr inbounds %struct.image_params, %struct.image_params* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %8, align 8
  %151 = load i8*, i8** %6, align 8
  store i8* %151, i8** %5, align 8
  br label %152

152:                                              ; preds = %169, %145
  %153 = load i8*, i8** %5, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = icmp ult i8* %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i8*, i8** %5, align 8
  %158 = load i8, i8* %157, align 1
  %159 = call i64 @IS_WHITESPACE(i8 signext %158)
  %160 = icmp ne i64 %159, 0
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %156, %152
  %163 = phi i1 [ false, %152 ], [ %161, %156 ]
  br i1 %163, label %164, label %172

164:                                              ; preds = %162
  %165 = load i8*, i8** %5, align 8
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %8, align 8
  store i8 %166, i8* %167, align 1
  br label %169

169:                                              ; preds = %164
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %5, align 8
  br label %152

172:                                              ; preds = %162
  %173 = load i8*, i8** %8, align 8
  store i8 0, i8* %173, align 1
  %174 = load %struct.image_params*, %struct.image_params** %3, align 8
  %175 = call i32 @exec_reset_save_path(%struct.image_params* %174)
  %176 = load %struct.image_params*, %struct.image_params** %3, align 8
  %177 = load %struct.image_params*, %struct.image_params** %3, align 8
  %178 = getelementptr inbounds %struct.image_params, %struct.image_params* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @CAST_USER_ADDR_T(i8* %179)
  %181 = load i32, i32* @UIO_SYSSPACE, align 4
  %182 = call i32 @exec_save_path(%struct.image_params* %176, i32 %180, i32 %181, i32* null)
  %183 = load %struct.image_params*, %struct.image_params** %3, align 8
  %184 = getelementptr inbounds %struct.image_params, %struct.image_params* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  store i8* %185, i8** %8, align 8
  %186 = load i8*, i8** %6, align 8
  store i8* %186, i8** %5, align 8
  br label %187

187:                                              ; preds = %196, %172
  %188 = load i8*, i8** %5, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = icmp ult i8* %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %187
  %192 = load i8*, i8** %5, align 8
  %193 = load i8, i8* %192, align 1
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %8, align 8
  store i8 %193, i8* %194, align 1
  br label %196

196:                                              ; preds = %191
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %5, align 8
  br label %187

199:                                              ; preds = %187
  %200 = load i8*, i8** %8, align 8
  store i8 0, i8* %200, align 1
  %201 = load %struct.image_params*, %struct.image_params** %3, align 8
  %202 = getelementptr inbounds %struct.image_params, %struct.image_params* %201, i32 0, i32 7
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @VSUID, align 4
  %207 = load i32, i32* @VSGID, align 4
  %208 = or i32 %206, %207
  %209 = and i32 %205, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %260

211:                                              ; preds = %199
  %212 = load %struct.image_params*, %struct.image_params** %3, align 8
  %213 = getelementptr inbounds %struct.image_params, %struct.image_params* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @vfs_context_proc(i32 %214)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.image_params*, %struct.image_params** %3, align 8
  %218 = getelementptr inbounds %struct.image_params, %struct.image_params* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @falloc(i32 %216, %struct.fileproc** %10, i32* %11, i32 %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %211
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %2, align 4
  br label %261

225:                                              ; preds = %211
  %226 = load i32, i32* @FREAD, align 4
  %227 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %228 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %227, i32 0, i32 0
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 2
  store i32 %226, i32* %230, align 8
  %231 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %232 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %231, i32 0, i32 0
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  store i32* @vnops, i32** %234, align 8
  %235 = load %struct.image_params*, %struct.image_params** %3, align 8
  %236 = getelementptr inbounds %struct.image_params, %struct.image_params* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %239 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %238, i32 0, i32 0
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  store i64 %237, i64* %241, align 8
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @proc_fdlock(i32 %242)
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @procfdtbl_releasefd(i32 %244, i32 %245, i32* null)
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %250 = call i32 @fp_drop(i32 %247, i32 %248, %struct.fileproc* %249, i32 1)
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @proc_fdunlock(i32 %251)
  %253 = load %struct.image_params*, %struct.image_params** %3, align 8
  %254 = getelementptr inbounds %struct.image_params, %struct.image_params* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @vnode_ref(i64 %255)
  %257 = load i32, i32* %11, align 4
  %258 = load %struct.image_params*, %struct.image_params** %3, align 8
  %259 = getelementptr inbounds %struct.image_params, %struct.image_params* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %225, %199
  store i32 -3, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %223, %127, %100, %80, %40, %34
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i64 @IS_EOL(i8 signext) #1

declare dso_local i64 @IS_WHITESPACE(i8 signext) #1

declare dso_local i32 @exec_reset_save_path(%struct.image_params*) #1

declare dso_local i32 @exec_save_path(%struct.image_params*, i32, i32, i32*) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i32 @falloc(i32, %struct.fileproc**, i32*, i32) #1

declare dso_local i32 @proc_fdlock(i32) #1

declare dso_local i32 @procfdtbl_releasefd(i32, i32, i32*) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(i32) #1

declare dso_local i32 @vnode_ref(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

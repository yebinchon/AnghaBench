; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fstatat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fstatat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%union.anon = type { %struct.stat }
%struct.stat = type { i64*, i32, i32, i64 }
%union.anon.0 = type { %struct.user64_stat }
%struct.user64_stat = type { i32 }
%struct.stat64 = type { i64*, i32, i32, i64 }
%struct.user64_stat64 = type { i32 }
%struct.user32_stat64 = type { i32 }
%struct.user32_stat = type { i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_GETATTR = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@KAUTH_FILESEC_NONE = common dso_local global i64 0, align 8
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CN_ALLOWRSRCFORK = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @fstatat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fstatat_internal(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nameidata, align 8
  %21 = alloca i32, align 4
  %22 = alloca %union.anon, align 8
  %23 = alloca %union.anon.0, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %30 = bitcast %union.anon* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = bitcast %union.anon.0* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 4, i1 false)
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %9
  %37 = load i32, i32* @NOFOLLOW, align 4
  br label %40

38:                                               ; preds = %9
  %39 = load i32, i32* @FOLLOW, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* @LOOKUP, align 4
  %43 = load i32, i32* @OP_GETATTR, align 4
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* @AUDITVNPATH1, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @NDINIT(%struct.nameidata* %20, i32 %42, i32 %43, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @nameiat(%struct.nameidata* %20, i32 %51)
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %25, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %25, align 4
  store i32 %56, i32* %10, align 4
  br label %224

57:                                               ; preds = %40
  %58 = load i64, i64* @KAUTH_FILESEC_NONE, align 8
  store i64 %58, i64* %27, align 8
  %59 = bitcast %union.anon* %22 to i8*
  store i8* %59, i8** %29, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i8*, i8** %29, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @USER_ADDR_NULL, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %66
  %69 = phi i64* [ %27, %66 ], [ null, %67 ]
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @vn_stat(%struct.TYPE_9__* %61, i8* %62, i64* %69, i32 %70, i32 %71)
  store i32 %72, i32* %25, align 4
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @vnode_put(%struct.TYPE_9__* %74)
  %76 = call i32 @nameidone(%struct.nameidata* %20)
  %77 = load i32, i32* %25, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %25, align 4
  store i32 %80, i32* %10, align 4
  br label %224

81:                                               ; preds = %68
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %81
  %85 = bitcast %union.anon* %22 to %struct.stat64*
  %86 = getelementptr inbounds %struct.stat64, %struct.stat64* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = bitcast %union.anon* %22 to %struct.stat64*
  %88 = getelementptr inbounds %struct.stat64, %struct.stat64* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  store i64 0, i64* %90, align 8
  %91 = bitcast %union.anon* %22 to %struct.stat64*
  %92 = getelementptr inbounds %struct.stat64, %struct.stat64* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @vfs_context_proc(i32 %95)
  %97 = call i64 @IS_64BIT_PROCESS(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %84
  %100 = bitcast %union.anon* %22 to %struct.stat64*
  %101 = bitcast %union.anon.0* %23 to %struct.user64_stat64*
  %102 = call i32 @munge_user64_stat64(%struct.stat64* %100, %struct.user64_stat64* %101)
  store i32 4, i32* %26, align 4
  %103 = bitcast %union.anon.0* %23 to %struct.user64_stat64*
  %104 = ptrtoint %struct.user64_stat64* %103 to i64
  store i64 %104, i64* %24, align 8
  br label %111

105:                                              ; preds = %84
  %106 = bitcast %union.anon* %22 to %struct.stat64*
  %107 = bitcast %union.anon.0* %23 to %struct.user32_stat64*
  %108 = call i32 @munge_user32_stat64(%struct.stat64* %106, %struct.user32_stat64* %107)
  store i32 4, i32* %26, align 4
  %109 = bitcast %union.anon.0* %23 to %struct.user32_stat64*
  %110 = ptrtoint %struct.user32_stat64* %109 to i64
  store i64 %110, i64* %24, align 8
  br label %111

111:                                              ; preds = %105, %99
  %112 = bitcast %union.anon* %22 to %struct.stat64*
  %113 = getelementptr inbounds %struct.stat64, %struct.stat64* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = bitcast %union.anon* %22 to %struct.stat64*
  %118 = getelementptr inbounds %struct.stat64, %struct.stat64* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @S_ISREG(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = bitcast %union.anon* %22 to %struct.stat64*
  %124 = getelementptr inbounds %struct.stat64, %struct.stat64* %123, i32 0, i32 1
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %116, %111
  br label %168

126:                                              ; preds = %81
  %127 = bitcast %union.anon* %22 to %struct.stat*
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = bitcast %union.anon* %22 to %struct.stat*
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  store i64 0, i64* %132, align 8
  %133 = bitcast %union.anon* %22 to %struct.stat*
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @vfs_context_proc(i32 %137)
  %139 = call i64 @IS_64BIT_PROCESS(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %126
  %142 = bitcast %union.anon* %22 to %struct.stat*
  %143 = bitcast %union.anon.0* %23 to %struct.user64_stat*
  %144 = call i32 @munge_user64_stat(%struct.stat* %142, %struct.user64_stat* %143)
  store i32 4, i32* %26, align 4
  %145 = bitcast %union.anon.0* %23 to %struct.user64_stat*
  %146 = ptrtoint %struct.user64_stat* %145 to i64
  store i64 %146, i64* %24, align 8
  br label %153

147:                                              ; preds = %126
  %148 = bitcast %union.anon* %22 to %struct.stat*
  %149 = bitcast %union.anon.0* %23 to %struct.user32_stat*
  %150 = call i32 @munge_user32_stat(%struct.stat* %148, %struct.user32_stat* %149)
  store i32 4, i32* %26, align 4
  %151 = bitcast %union.anon.0* %23 to %struct.user32_stat*
  %152 = ptrtoint %struct.user32_stat* %151 to i64
  store i64 %152, i64* %24, align 8
  br label %153

153:                                              ; preds = %147, %141
  %154 = bitcast %union.anon* %22 to %struct.stat*
  %155 = getelementptr inbounds %struct.stat, %struct.stat* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = bitcast %union.anon* %22 to %struct.stat*
  %160 = getelementptr inbounds %struct.stat, %struct.stat* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @S_ISREG(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = bitcast %union.anon* %22 to %struct.stat*
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %165, i32 0, i32 1
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %164, %158, %153
  br label %168

168:                                              ; preds = %167, %125
  %169 = load i64, i64* %24, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %26, align 4
  %172 = sext i32 %171 to i64
  %173 = call i32 @copyout(i64 %169, i32 %170, i64 %172)
  store i32 %173, i32* %25, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %215

176:                                              ; preds = %168
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @USER_ADDR_NULL, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %214

180:                                              ; preds = %176
  %181 = load i64, i64* %27, align 8
  %182 = load i64, i64* @KAUTH_FILESEC_NONE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32, i32* %15, align 4
  %186 = call i64 @susize(i32 %185, i64 0)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* @EFAULT, align 4
  store i32 %189, i32* %25, align 4
  br label %215

190:                                              ; preds = %184
  br label %213

191:                                              ; preds = %180
  %192 = load i32, i32* %15, align 4
  %193 = call i64 @fusize(i32 %192)
  store i64 %193, i64* %28, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load i64, i64* %27, align 8
  %196 = call i64 @KAUTH_FILESEC_COPYSIZE(i64 %195)
  %197 = call i64 @susize(i32 %194, i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = load i32, i32* @EFAULT, align 4
  store i32 %200, i32* %25, align 4
  br label %215

201:                                              ; preds = %191
  %202 = load i64, i64* %28, align 8
  %203 = load i64, i64* %27, align 8
  %204 = call i64 @KAUTH_FILESEC_COPYSIZE(i64 %203)
  %205 = icmp uge i64 %202, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i64, i64* %27, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i64, i64* %27, align 8
  %210 = call i64 @KAUTH_FILESEC_COPYSIZE(i64 %209)
  %211 = call i32 @copyout(i64 %207, i32 %208, i64 %210)
  store i32 %211, i32* %25, align 4
  br label %212

212:                                              ; preds = %206, %201
  br label %213

213:                                              ; preds = %212, %190
  br label %214

214:                                              ; preds = %213, %176
  br label %215

215:                                              ; preds = %214, %199, %188, %175
  %216 = load i64, i64* %27, align 8
  %217 = load i64, i64* @KAUTH_FILESEC_NONE, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i64, i64* %27, align 8
  %221 = call i32 @kauth_filesec_free(i64 %220)
  br label %222

222:                                              ; preds = %219, %215
  %223 = load i32, i32* %25, align 4
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %222, %79, %55
  %225 = load i32, i32* %10, align 4
  ret i32 %225
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #2

declare dso_local i32 @vn_stat(%struct.TYPE_9__*, i8*, i64*, i32, i32) #2

declare dso_local i32 @vnode_put(%struct.TYPE_9__*) #2

declare dso_local i32 @nameidone(%struct.nameidata*) #2

declare dso_local i64 @IS_64BIT_PROCESS(i32) #2

declare dso_local i32 @vfs_context_proc(i32) #2

declare dso_local i32 @munge_user64_stat64(%struct.stat64*, %struct.user64_stat64*) #2

declare dso_local i32 @munge_user32_stat64(%struct.stat64*, %struct.user32_stat64*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @munge_user64_stat(%struct.stat*, %struct.user64_stat*) #2

declare dso_local i32 @munge_user32_stat(%struct.stat*, %struct.user32_stat*) #2

declare dso_local i32 @copyout(i64, i32, i64) #2

declare dso_local i64 @susize(i32, i64) #2

declare dso_local i64 @fusize(i32) #2

declare dso_local i64 @KAUTH_FILESEC_COPYSIZE(i64) #2

declare dso_local i32 @kauth_filesec_free(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

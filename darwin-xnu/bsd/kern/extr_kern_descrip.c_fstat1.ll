; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fstat1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fstat1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.anon = type { %struct.stat }
%struct.stat = type { i64*, i64 }
%union.anon.0 = type { %struct.user64_stat }
%struct.user64_stat = type { i32 }
%struct.vnode = type { i32 }
%struct.stat64 = type { i64*, i64 }
%struct.user64_stat64 = type { i32 }
%struct.user32_stat64 = type { i32 }
%struct.user32_stat = type { i32 }

@KAUTH_FILESEC_NONE = common dso_local global i64 0, align 8
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@vnpath = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @fstat1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fstat1(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fileproc*, align 8
  %15 = alloca %union.anon, align 8
  %16 = alloca %union.anon.0, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = call i32 (...) @vfs_context_current()
  store i32 %26, i32* %23, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @fp_lookup(i32 %30, i32 %31, %struct.fileproc** %14, i32 0)
  store i32 %32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %7, align 4
  br label %223

36:                                               ; preds = %6
  %37 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %38 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %19, align 4
  %40 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %41 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %20, align 8
  %43 = load i64, i64* @KAUTH_FILESEC_NONE, align 8
  store i64 %43, i64* %21, align 8
  %44 = bitcast %union.anon* %15 to i8*
  store i8* %44, i8** %24, align 8
  %45 = load i32, i32* %19, align 4
  switch i32 %45, label %104 [
    i32 128, label %46
    i32 131, label %85
    i32 130, label %91
    i32 132, label %97
  ]

46:                                               ; preds = %36
  %47 = load i64, i64* %20, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @vnode_getwithref(i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @USER_ADDR_NULL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i64, i64* %20, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i8*, i8** %24, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %62 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vn_stat_noauth(i32 %57, i8* %58, i32* null, i32 %59, i32 %60, i32 %65)
  store i32 %66, i32* %17, align 4
  br label %74

67:                                               ; preds = %51
  %68 = load i64, i64* %20, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i8*, i8** %24, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %23, align 4
  %73 = call i32 @vn_stat(i32 %69, i8* %70, i64* %21, i32 %71, i32 %72)
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %67, %55
  %75 = load i32, i32* @vnpath, align 4
  %76 = load i64, i64* %20, align 8
  %77 = inttoptr i64 %76 to %struct.vnode*
  %78 = ptrtoint %struct.vnode* %77 to i32
  %79 = load i32, i32* @ARG_VNODE1, align 4
  %80 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %75, i32 %78, i32 %79)
  %81 = load i64, i64* %20, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @vnode_put(i32 %82)
  br label %84

84:                                               ; preds = %74, %46
  br label %106

85:                                               ; preds = %36
  %86 = load i64, i64* %20, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8*, i8** %24, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @pipe_stat(i8* %87, i8* %88, i32 %89)
  store i32 %90, i32* %17, align 4
  br label %106

91:                                               ; preds = %36
  %92 = load i64, i64* %20, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8*, i8** %24, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @pshm_stat(i8* %93, i8* %94, i32 %95)
  store i32 %96, i32* %17, align 4
  br label %106

97:                                               ; preds = %36
  %98 = load i64, i64* %20, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = load i8*, i8** %24, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @kqueue_stat(i8* %99, i8* %100, i32 %101, i32 %102)
  store i32 %103, i32* %17, align 4
  br label %106

104:                                              ; preds = %36
  %105 = load i32, i32* @EBADF, align 4
  store i32 %105, i32* %17, align 4
  br label %210

106:                                              ; preds = %97, %91, %85, %84
  %107 = load i32, i32* %17, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %171

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %109
  %113 = bitcast %union.anon* %15 to %struct.stat64*
  %114 = getelementptr inbounds %struct.stat64, %struct.stat64* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = bitcast %union.anon* %15 to %struct.stat64*
  %116 = getelementptr inbounds %struct.stat64, %struct.stat64* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  store i64 0, i64* %118, align 8
  %119 = bitcast %union.anon* %15 to %struct.stat64*
  %120 = getelementptr inbounds %struct.stat64, %struct.stat64* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  store i64 0, i64* %122, align 8
  %123 = call i32 (...) @current_proc()
  %124 = call i64 @IS_64BIT_PROCESS(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %112
  %127 = bitcast %union.anon* %15 to %struct.stat64*
  %128 = bitcast %union.anon.0* %16 to %struct.user64_stat64*
  %129 = call i32 @munge_user64_stat64(%struct.stat64* %127, %struct.user64_stat64* %128)
  store i32 4, i32* %18, align 4
  %130 = bitcast %union.anon.0* %16 to %struct.user64_stat64*
  %131 = ptrtoint %struct.user64_stat64* %130 to i64
  store i64 %131, i64* %25, align 8
  br label %138

132:                                              ; preds = %112
  %133 = bitcast %union.anon* %15 to %struct.stat64*
  %134 = bitcast %union.anon.0* %16 to %struct.user32_stat64*
  %135 = call i32 @munge_user32_stat64(%struct.stat64* %133, %struct.user32_stat64* %134)
  store i32 4, i32* %18, align 4
  %136 = bitcast %union.anon.0* %16 to %struct.user32_stat64*
  %137 = ptrtoint %struct.user32_stat64* %136 to i64
  store i64 %137, i64* %25, align 8
  br label %138

138:                                              ; preds = %132, %126
  br label %166

139:                                              ; preds = %109
  %140 = bitcast %union.anon* %15 to %struct.stat*
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = bitcast %union.anon* %15 to %struct.stat*
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  store i64 0, i64* %145, align 8
  %146 = bitcast %union.anon* %15 to %struct.stat*
  %147 = getelementptr inbounds %struct.stat, %struct.stat* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  store i64 0, i64* %149, align 8
  %150 = call i32 (...) @current_proc()
  %151 = call i64 @IS_64BIT_PROCESS(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = bitcast %union.anon* %15 to %struct.stat*
  %155 = bitcast %union.anon.0* %16 to %struct.user64_stat*
  %156 = call i32 @munge_user64_stat(%struct.stat* %154, %struct.user64_stat* %155)
  store i32 4, i32* %18, align 4
  %157 = bitcast %union.anon.0* %16 to %struct.user64_stat*
  %158 = ptrtoint %struct.user64_stat* %157 to i64
  store i64 %158, i64* %25, align 8
  br label %165

159:                                              ; preds = %139
  %160 = bitcast %union.anon* %15 to %struct.stat*
  %161 = bitcast %union.anon.0* %16 to %struct.user32_stat*
  %162 = call i32 @munge_user32_stat(%struct.stat* %160, %struct.user32_stat* %161)
  store i32 4, i32* %18, align 4
  %163 = bitcast %union.anon.0* %16 to %struct.user32_stat*
  %164 = ptrtoint %struct.user32_stat* %163 to i64
  store i64 %164, i64* %25, align 8
  br label %165

165:                                              ; preds = %159, %153
  br label %166

166:                                              ; preds = %165, %138
  %167 = load i64, i64* %25, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %18, align 4
  %170 = call i32 @copyout(i64 %167, i32 %168, i32 %169)
  store i32 %170, i32* %17, align 4
  br label %171

171:                                              ; preds = %166, %106
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @USER_ADDR_NULL, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %209

175:                                              ; preds = %171
  %176 = load i64, i64* %21, align 8
  %177 = load i64, i64* @KAUTH_FILESEC_NONE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, i32* %12, align 4
  %181 = call i64 @susize(i32 %180, i32 0)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* @EFAULT, align 4
  store i32 %184, i32* %17, align 4
  br label %210

185:                                              ; preds = %179
  br label %208

186:                                              ; preds = %175
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @fusize(i32 %187)
  store i32 %188, i32* %22, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i64, i64* %21, align 8
  %191 = call i32 @KAUTH_FILESEC_COPYSIZE(i64 %190)
  %192 = call i64 @susize(i32 %189, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = load i32, i32* @EFAULT, align 4
  store i32 %195, i32* %17, align 4
  br label %210

196:                                              ; preds = %186
  %197 = load i32, i32* %22, align 4
  %198 = load i64, i64* %21, align 8
  %199 = call i32 @KAUTH_FILESEC_COPYSIZE(i64 %198)
  %200 = icmp sge i32 %197, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i64, i64* %21, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i64, i64* %21, align 8
  %205 = call i32 @KAUTH_FILESEC_COPYSIZE(i64 %204)
  %206 = call i32 @copyout(i64 %202, i32 %203, i32 %205)
  store i32 %206, i32* %17, align 4
  br label %207

207:                                              ; preds = %201, %196
  br label %208

208:                                              ; preds = %207, %185
  br label %209

209:                                              ; preds = %208, %171
  br label %210

210:                                              ; preds = %209, %194, %183, %104
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %214 = call i32 @fp_drop(i32 %211, i32 %212, %struct.fileproc* %213, i32 0)
  %215 = load i64, i64* %21, align 8
  %216 = inttoptr i64 %215 to i8*
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %210
  %219 = load i64, i64* %21, align 8
  %220 = call i32 @kauth_filesec_free(i64 %219)
  br label %221

221:                                              ; preds = %218, %210
  %222 = load i32, i32* %17, align 4
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %221, %34
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @AUDIT_ARG(i32, i32, ...) #1

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @vnode_getwithref(i32) #1

declare dso_local i32 @vn_stat_noauth(i32, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @vn_stat(i32, i8*, i64*, i32, i32) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @pipe_stat(i8*, i8*, i32) #1

declare dso_local i32 @pshm_stat(i8*, i8*, i32) #1

declare dso_local i32 @kqueue_stat(i8*, i8*, i32, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @munge_user64_stat64(%struct.stat64*, %struct.user64_stat64*) #1

declare dso_local i32 @munge_user32_stat64(%struct.stat64*, %struct.user32_stat64*) #1

declare dso_local i32 @munge_user64_stat(%struct.stat*, %struct.user64_stat*) #1

declare dso_local i32 @munge_user32_stat(%struct.stat*, %struct.user32_stat*) #1

declare dso_local i32 @copyout(i64, i32, i32) #1

declare dso_local i64 @susize(i32, i32) #1

declare dso_local i32 @fusize(i32) #1

declare dso_local i32 @KAUTH_FILESEC_COPYSIZE(i64) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @kauth_filesec_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

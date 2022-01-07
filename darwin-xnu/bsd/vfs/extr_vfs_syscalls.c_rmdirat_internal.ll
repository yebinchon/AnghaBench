; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_rmdirat_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_rmdirat_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.nameidata = type { %struct.TYPE_23__*, %struct.TYPE_22__, %struct.TYPE_23__*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.vnode_attr = type { i32 }

@DELETE = common dso_local global i32 0, align 4
@OP_RMDIR = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@NAMEI_COMPOUNDRMDIR = common dso_local global i32 0, align 4
@VROOT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MAX_AUTHORIZE_ENOENT_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No error, but no compound rmdir?\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.TYPE_23__* null, align 8
@EKEEPLOOKING = common dso_local global i32 0, align 4
@KAUTH_FILEOP_DELETE = common dso_local global i32 0, align 4
@VISHARDLINK = common dso_local global i32 0, align 4
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rm AD\00", align 1
@ENOTEMPTY = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_FINFO = common dso_local global i32 0, align 4
@FSE_ARG_STRING = common dso_local global i32 0, align 4
@FSE_DELETE = common dso_local global i32 0, align 4
@FSE_TRUNCATED_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @rmdirat_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmdirat_internal(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nameidata, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vnode_attr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store %struct.vnode_attr* null, %struct.vnode_attr** %19, align 8
  store i32 0, i32* %20, align 4
  br label %23

23:                                               ; preds = %226, %4
  %24 = load i32, i32* @DELETE, align 4
  %25 = load i32, i32* @OP_RMDIR, align 4
  %26 = load i32, i32* @LOCKPARENT, align 4
  %27 = load i32, i32* @AUDITVNPATH1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @NDINIT(%struct.nameidata* %13, i32 %24, i32 %25, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @NAMEI_COMPOUNDRMDIR, align 4
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  br label %35

35:                                               ; preds = %149, %23
  store i32 0, i32* %22, align 4
  store %struct.vnode_attr* null, %struct.vnode_attr** %19, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @nameiat(%struct.nameidata* %13, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %231

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %11, align 8
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %45, align 8
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %10, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %48 = icmp ne %struct.TYPE_23__* %47, null
  br i1 %48, label %49, label %101

49:                                               ; preds = %42
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = call i32 @vnode_compound_rmdir_available(%struct.TYPE_23__* %50)
  store i32 %51, i32* %21, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VROOT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %12, align 4
  br label %199

60:                                               ; preds = %49
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %62 = call i64 @vnode_isswap(%struct.TYPE_23__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (...) @vfs_context_kernel()
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @EPERM, align 4
  store i32 %69, i32* %12, align 4
  br label %199

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %76 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @vn_authorize_rmdir(%struct.TYPE_23__* %74, %struct.TYPE_23__* %75, %struct.TYPE_22__* %76, i32 %77, i32* null)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @ENOENT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* @MAX_AUTHORIZE_ENOENT_RETRIES, align 4
  %88 = icmp slt i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* @MAX_AUTHORIZE_ENOENT_RETRIES, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  store i32 1, i32* %22, align 4
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %20, align 4
  br label %97

97:                                               ; preds = %94, %85
  br label %98

98:                                               ; preds = %97, %81
  br label %199

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99, %70
  br label %108

101:                                              ; preds = %42
  store i32 1, i32* %21, align 4
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %103 = call i32 @vnode_compound_rmdir_available(%struct.TYPE_23__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  br label %108

108:                                              ; preds = %107, %100
  %109 = call i32 (...) @kauth_authorize_fileop_has_listeners()
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %112, %108
  %116 = load i8*, i8** %14, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 @GET_PATH(i8* %119)
  %121 = load i8*, i8** %14, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @ENOMEM, align 4
  store i32 %124, i32* %12, align 4
  br label %199

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %115
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %128 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i32, i32* @MAXPATHLEN, align 4
  %133 = call i32 @safe_getpath(%struct.TYPE_23__* %127, i32 %130, i8* %131, i32 %132, i32* %18)
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %126, %112
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %136 = load %struct.vnode_attr*, %struct.vnode_attr** %19, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @vn_rmdir(%struct.TYPE_23__* %135, %struct.TYPE_23__** %10, %struct.nameidata* %13, %struct.vnode_attr* %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %140 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  store %struct.TYPE_23__* %139, %struct.TYPE_23__** %140, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** @NULLVP, align 8
  %143 = icmp eq %struct.TYPE_23__* %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %199

145:                                              ; preds = %134
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @EKEEPLOOKING, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %35

150:                                              ; preds = %145
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @ENOENT, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* @MAX_AUTHORIZE_ENOENT_RETRIES, align 4
  %160 = icmp slt i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* @MAX_AUTHORIZE_ENOENT_RETRIES, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  store i32 1, i32* %22, align 4
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  br label %199

169:                                              ; preds = %157
  br label %170

170:                                              ; preds = %169, %153, %150
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %198, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @vfs_context_ucred(i32 %178)
  %180 = load i32, i32* @KAUTH_FILEOP_DELETE, align 4
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %182 = ptrtoint %struct.TYPE_23__* %181 to i64
  %183 = load i8*, i8** %14, align 8
  %184 = ptrtoint i8* %183 to i64
  %185 = call i32 @kauth_authorize_fileop(i32 %179, i32 %180, i64 %182, i64 %184)
  br label %186

186:                                              ; preds = %177, %174
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @VISHARDLINK, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %195 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %196 = call i32 @vnode_update_identity(%struct.TYPE_23__* %194, i32* null, i32* null, i32 0, i32 0, i32 %195)
  br label %197

197:                                              ; preds = %193, %186
  br label %198

198:                                              ; preds = %197, %171
  br label %199

199:                                              ; preds = %198, %166, %144, %123, %98, %68, %58
  %200 = load i8*, i8** %14, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i8*, i8** %14, align 8
  %204 = call i32 @RELEASE_PATH(i8* %203)
  store i8* null, i8** %14, align 8
  br label %205

205:                                              ; preds = %202, %199
  %206 = call i32 @nameidone(%struct.nameidata* %13)
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %208 = call i32 @vnode_put(%struct.TYPE_23__* %207)
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %210 = icmp ne %struct.TYPE_23__* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %213 = call i32 @vnode_put(%struct.TYPE_23__* %212)
  br label %214

214:                                              ; preds = %211, %205
  %215 = load i32, i32* %22, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %219 = ptrtoint %struct.TYPE_23__* %218 to i32
  %220 = call i32 @wakeup_one(i32 %219)
  %221 = load i32, i32* %12, align 4
  store i32 %221, i32* %5, align 4
  br label %231

222:                                              ; preds = %214
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %224 = load i32, i32* @PVFS, align 4
  %225 = call i32 @tsleep(%struct.TYPE_23__* %223, i32 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %226

226:                                              ; preds = %222
  %227 = load i32, i32* %22, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %23, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %12, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %229, %217, %40
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @vnode_compound_rmdir_available(%struct.TYPE_23__*) #1

declare dso_local i64 @vnode_isswap(%struct.TYPE_23__*) #1

declare dso_local i32 @vfs_context_kernel(...) #1

declare dso_local i32 @vn_authorize_rmdir(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @kauth_authorize_fileop_has_listeners(...) #1

declare dso_local i32 @GET_PATH(i8*) #1

declare dso_local i32 @safe_getpath(%struct.TYPE_23__*, i32, i8*, i32, i32*) #1

declare dso_local i32 @vn_rmdir(%struct.TYPE_23__*, %struct.TYPE_23__**, %struct.nameidata*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @kauth_authorize_fileop(i32, i32, i64, i64) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @vnode_update_identity(%struct.TYPE_23__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @RELEASE_PATH(i8*) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_23__*) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @tsleep(%struct.TYPE_23__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

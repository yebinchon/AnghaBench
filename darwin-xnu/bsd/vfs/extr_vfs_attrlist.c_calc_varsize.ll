; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_calc_varsize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_calc_varsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.attrlist = type { i32, i32 }
%struct.vnode_attr = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@ATTR_CMN_NAME = common dso_local global i32 0, align 4
@va_name = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@ATTR_CMN_FULLPATH = common dso_local global i32 0, align 4
@ATTR_CMNEXT_RELPATH = common dso_local global i32 0, align 4
@BUILDPATH_VOLUME_RELATIVE = common dso_local global i32 0, align 4
@ATTR_CMN_EXTENDED_SECURITY = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@KAUTH_FILESEC_NOACL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.attrlist*, %struct.vnode_attr*, i32*, i8*, i32*, i8*, i32*, i8**, i8**, i32*)* @calc_varsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_varsize(%struct.TYPE_12__* %0, %struct.attrlist* %1, %struct.vnode_attr* %2, i32* %3, i8* %4, i32* %5, i8* %6, i32* %7, i8** %8, i8** %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.attrlist*, align 8
  %14 = alloca %struct.vnode_attr*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %12, align 8
  store %struct.attrlist* %1, %struct.attrlist** %13, align 8
  store %struct.vnode_attr* %2, %struct.vnode_attr** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8** %8, i8*** %20, align 8
  store i8** %9, i8*** %21, align 8
  store i32* %10, i32** %22, align 8
  store i32 0, i32* %23, align 4
  %28 = load i32*, i32** %15, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %30 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATTR_CMN_NAME, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %145

35:                                               ; preds = %11
  %36 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %37 = load i32, i32* @va_name, align 4
  %38 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %42 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @MAXPATHLEN, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %49 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %21, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8**, i8*** %21, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = load i32*, i32** %22, align 8
  store i32 %54, i32* %55, align 4
  br label %137

56:                                               ; preds = %35
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %134

59:                                               ; preds = %56
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = call i64 @vnode_isvroot(%struct.TYPE_12__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %118

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %63
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 47
  br i1 %82, label %83, label %106

83:                                               ; preds = %73
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %85 = call i8* @vnode_getname(%struct.TYPE_12__* %84)
  %86 = load i8**, i8*** %20, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i8**, i8*** %21, align 8
  store i8* %85, i8** %87, align 8
  %88 = load i8**, i8*** %21, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = bitcast i32* %98 to i8*
  %100 = load i8**, i8*** %21, align 8
  store i8* %99, i8** %100, align 8
  br label %101

101:                                              ; preds = %91, %83
  %102 = load i8**, i8*** %21, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = load i32*, i32** %22, align 8
  store i32 %104, i32* %105, align 4
  br label %117

106:                                              ; preds = %73, %63
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = load i8**, i8*** %21, align 8
  %115 = load i32*, i32** %22, align 8
  %116 = call i32 @getattrlist_findnamecomp(i8* %113, i8** %114, i32* %115)
  br label %117

117:                                              ; preds = %106, %101
  br label %133

118:                                              ; preds = %59
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %120 = call i8* @vnode_getname(%struct.TYPE_12__* %119)
  %121 = load i8**, i8*** %20, align 8
  store i8* %120, i8** %121, align 8
  %122 = load i8**, i8*** %21, align 8
  store i8* %120, i8** %122, align 8
  %123 = load i32*, i32** %22, align 8
  store i32 0, i32* %123, align 4
  %124 = load i8**, i8*** %21, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load i8**, i8*** %21, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = load i32*, i32** %22, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %118
  br label %133

133:                                              ; preds = %132, %117
  br label %136

134:                                              ; preds = %56
  %135 = load i32*, i32** %22, align 8
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %134, %133
  br label %137

137:                                              ; preds = %136, %40
  %138 = load i32*, i32** %22, align 8
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  %141 = call i32 @roundup(i32 %140, i32 4)
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %137, %11
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %147 = icmp ne %struct.TYPE_12__* %146, null
  br i1 %147, label %148, label %182

148:                                              ; preds = %145
  %149 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %150 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ATTR_CMN_FULLPATH, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %148
  %156 = load i32, i32* @MAXPATHLEN, align 4
  store i32 %156, i32* %24, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = load i32, i32* %24, align 4
  %160 = call i32 (...) @vfs_context_current()
  %161 = call i32 @build_path(%struct.TYPE_12__* %157, i8* %158, i32 %159, i32* %24, i32 0, i32 %160)
  store i32 %161, i32* %25, align 4
  %162 = load i32, i32* %25, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = load i32, i32* %25, align 4
  store i32 %165, i32* %23, align 4
  br label %256

166:                                              ; preds = %155
  %167 = load i32*, i32** %17, align 8
  store i32 0, i32* %167, align 4
  %168 = load i8*, i8** %16, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i8*, i8** %16, align 8
  %172 = call i32 @strlen(i8* %171)
  %173 = load i32*, i32** %17, align 8
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %166
  %175 = load i32*, i32** %17, align 8
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  %178 = call i32 @roundup(i32 %177, i32 4)
  %179 = load i32*, i32** %15, align 8
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %178
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %174, %148, %145
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %184 = icmp ne %struct.TYPE_12__* %183, null
  br i1 %184, label %185, label %212

185:                                              ; preds = %182
  %186 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %187 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @ATTR_CMNEXT_RELPATH, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %185
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %194 = load i8*, i8** %18, align 8
  %195 = load i32, i32* @MAXPATHLEN, align 4
  %196 = load i32, i32* @BUILDPATH_VOLUME_RELATIVE, align 4
  %197 = call i32 (...) @vfs_context_current()
  %198 = call i32 @build_path(%struct.TYPE_12__* %193, i8* %194, i32 %195, i32* %26, i32 %196, i32 %197)
  store i32 %198, i32* %27, align 4
  %199 = load i32, i32* %27, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = load i32, i32* %27, align 4
  store i32 %202, i32* %23, align 4
  br label %256

203:                                              ; preds = %192
  %204 = load i32, i32* %26, align 4
  %205 = sub nsw i32 %204, 1
  %206 = load i32*, i32** %19, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %26, align 4
  %208 = call i32 @roundup(i32 %207, i32 4)
  %209 = load i32*, i32** %15, align 8
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, %208
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %203, %185, %182
  %213 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %214 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @ATTR_CMN_EXTENDED_SECURITY, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %255

219:                                              ; preds = %212
  %220 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %221 = load i32, i32* @va_acl, align 4
  %222 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %255

224:                                              ; preds = %219
  %225 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %226 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %225, i32 0, i32 1
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = icmp ne %struct.TYPE_11__* %227, null
  br i1 %228, label %229, label %255

229:                                              ; preds = %224
  %230 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %231 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %230, i32 0, i32 1
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @KAUTH_FILESEC_NOACL, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %229
  %238 = call i32 @KAUTH_FILESEC_SIZE(i64 0)
  %239 = call i32 @roundup(i32 %238, i32 4)
  %240 = load i32*, i32** %15, align 8
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, %239
  store i32 %242, i32* %240, align 4
  br label %254

243:                                              ; preds = %229
  %244 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %245 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %244, i32 0, i32 1
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @KAUTH_FILESEC_SIZE(i64 %248)
  %250 = call i32 @roundup(i32 %249, i32 4)
  %251 = load i32*, i32** %15, align 8
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, %250
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %243, %237
  br label %255

255:                                              ; preds = %254, %224, %219, %212
  br label %256

256:                                              ; preds = %255, %201, %164
  %257 = load i32, i32* %23, align 4
  ret i32 %257
}

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @vnode_isvroot(%struct.TYPE_12__*) #1

declare dso_local i8* @vnode_getname(%struct.TYPE_12__*) #1

declare dso_local i32 @getattrlist_findnamecomp(i8*, i8**, i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @build_path(%struct.TYPE_12__*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @KAUTH_FILESEC_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_acl_inherit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_acl_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vnode_attr = type { %struct.TYPE_8__* }

@KAUTH_ACL_NO_INHERIT = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"    ERROR - could not get parent directory ACL for inheritance\00", align 1
@KAUTH_ACE_DIRECTORY_INHERIT = common dso_local global i32 0, align 4
@KAUTH_ACE_FILE_INHERIT = common dso_local global i32 0, align 4
@KAUTH_FILESEC_NOACL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"    ERROR - could not allocate %d-entry result buffer for inherited ACL\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KAUTH_ACE_INHERITED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"    INHERIT - applied %d of %d initial entries\00", align 1
@KAUTH_ACE_ONLY_INHERIT = common dso_local global i32 0, align 4
@KAUTH_ACE_LIMIT_INHERIT = common dso_local global i32 0, align 4
@KAUTH_ACE_INHERIT_CONTROL_FLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"    INHERIT - product ACL has %d entries\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kauth_acl_inherit(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vnode_attr, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @KAUTH_ACL_NO_INHERIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %21, %5
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @vnode_mount(i32* %32)
  %34 = call i32 @vfs_authopaque(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %31
  %37 = call i32 @VATTR_INIT(%struct.vnode_attr* %16)
  %38 = load i32, i32* @va_acl, align 4
  %39 = call i32 @VATTR_WANTED(%struct.vnode_attr* %16, i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @vnode_getattr(i32* %40, %struct.vnode_attr* %16, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %292

47:                                               ; preds = %36
  %48 = load i32, i32* @va_acl, align 4
  %49 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %16, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %16, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %17, align 8
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %31, %28, %21
  store i32 0, i32* %12, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %88, %58
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @KAUTH_ACE_DIRECTORY_INHERIT, align 4
  br label %80

78:                                               ; preds = %65
  %79 = load i32, i32* @KAUTH_ACE_FILE_INHERIT, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = and i32 %73, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %15, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %59

91:                                               ; preds = %59
  br label %92

92:                                               ; preds = %91, %55
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = icmp eq %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %95, %92
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = icmp ne %struct.TYPE_8__* %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @KAUTH_FILESEC_NOACL, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %112

111:                                              ; preds = %99
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %112

112:                                              ; preds = %111, %105
  br label %113

113:                                              ; preds = %112, %96
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = icmp eq %struct.TYPE_8__* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %120, align 8
  store i32 0, i32* %13, align 4
  br label %284

121:                                              ; preds = %116, %113
  %122 = load i32, i32* %12, align 4
  %123 = call %struct.TYPE_8__* @kauth_acl_alloc(i32 %122)
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %18, align 8
  %124 = icmp eq %struct.TYPE_8__* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  %127 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @ENOMEM, align 4
  store i32 %128, i32* %13, align 4
  br label %284

129:                                              ; preds = %121
  store i32 0, i32* %14, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = icmp ne %struct.TYPE_8__* %130, null
  br i1 %131, label %132, label %177

132:                                              ; preds = %129
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %168, %132
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %171

139:                                              ; preds = %133
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @KAUTH_ACE_INHERITED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %139
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %157
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = bitcast %struct.TYPE_7__* %158 to i8*
  %166 = bitcast %struct.TYPE_7__* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 4, i1 false)
  br label %167

167:                                              ; preds = %151, %139
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %15, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %133

171:                                              ; preds = %133
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %171, %129
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %179 = icmp ne %struct.TYPE_8__* %178, null
  br i1 %179, label %180, label %276

180:                                              ; preds = %177
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %272, %180
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ult i32 %182, %185
  br i1 %186, label %187, label %275

187:                                              ; preds = %181
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %187
  %199 = load i32, i32* @KAUTH_ACE_DIRECTORY_INHERIT, align 4
  br label %202

200:                                              ; preds = %187
  %201 = load i32, i32* @KAUTH_ACE_FILE_INHERIT, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = and i32 %195, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %271

206:                                              ; preds = %202
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i64 %211
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %15, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %217
  %219 = bitcast %struct.TYPE_7__* %212 to i8*
  %220 = bitcast %struct.TYPE_7__* %218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %219, i8* align 4 %220, i64 4, i1 false)
  %221 = load i32, i32* @KAUTH_ACE_INHERITED, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %221
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* @KAUTH_ACE_ONLY_INHERIT, align 4
  %232 = xor i32 %231, -1
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, %232
  store i32 %241, i32* %239, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @KAUTH_ACE_LIMIT_INHERIT, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %206
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %268, label %256

256:                                              ; preds = %253, %206
  %257 = load i32, i32* @KAUTH_ACE_INHERIT_CONTROL_FLAGS, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %258
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %256, %253
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  br label %271

271:                                              ; preds = %268, %202
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %15, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %15, align 4
  br label %181

275:                                              ; preds = %181
  br label %276

276:                                              ; preds = %275, %177
  %277 = load i32, i32* %14, align 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 4
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %281 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %280, %struct.TYPE_8__** %281, align 8
  %282 = load i32, i32* %14, align 4
  %283 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %282)
  store i32 0, i32* %13, align 4
  br label %284

284:                                              ; preds = %276, %125, %119
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %286 = icmp ne %struct.TYPE_8__* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %289 = call i32 @kauth_acl_free(%struct.TYPE_8__* %288)
  br label %290

290:                                              ; preds = %287, %284
  %291 = load i32, i32* %13, align 4
  store i32 %291, i32* %6, align 4
  br label %292

292:                                              ; preds = %290, %44
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @vfs_authopaque(i32) #1

declare dso_local i32 @vnode_mount(i32*) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_getattr(i32*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, ...) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local %struct.TYPE_8__* @kauth_acl_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kauth_acl_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

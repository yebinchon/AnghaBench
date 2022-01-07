; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_open_auth_do_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_open_auth_do_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i64, %struct.TYPE_14__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32* }
%struct.vnode_attr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@va_type = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@VA_EXCLUSIVE = common dso_local global i32 0, align 4
@VN_CREATE_DOOPEN = common dso_local global i32 0, align 4
@COMPOUND_OPEN_STATUS_DID_CREATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EKEEPLOOKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EKEEPLOOKING, but we did a create?\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"EKEEPLOOKING from filesystem that doesn't support compound vnops?\00", align 1
@NAMEI_CONTLOOKUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"EKEEPLOOKING, but continue flag not set?\00", align 1
@VNODE_UPDATE_NAME = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4
@CN_WANTSRSRCFORK = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_CREATE_FILE = common dso_local global i32 0, align 4
@XATTR_RESOURCEFORK_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.vnode_attr*, i32, i32*, i32*, i32)* @vn_open_auth_do_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_open_auth_do_create(%struct.nameidata* %0, %struct.vnode_attr* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca %struct.vnode_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %8, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %15, align 8
  %24 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_15__*
  %28 = call i32 @vnode_compound_open_available(%struct.TYPE_15__* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32*, i32** %12, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %32 = load i32, i32* @va_type, align 4
  %33 = load i32, i32* @VREG, align 4
  %34 = call i32 @VATTR_SET(%struct.vnode_attr* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @O_EXCL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %6
  %40 = load i32, i32* @VA_EXCLUSIVE, align 4
  %41 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %42 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %6
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %50 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %50, i32 0, i32 2
  %52 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @vn_authorize_create(%struct.TYPE_15__* %49, %struct.TYPE_14__* %51, %struct.vnode_attr* %52, i32 %53, i32* null)
  store i32 %54, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %185

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %60 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %60, i32 0, i32 3
  %62 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %63 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %64 = load i32, i32* @VN_CREATE_DOOPEN, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @vn_create(%struct.TYPE_15__* %59, %struct.TYPE_15__** %61, %struct.nameidata* %62, %struct.vnode_attr* %63, i32 %64, i32 %65, i32* %14, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %58
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @COMPOUND_OPEN_STATUS_DID_CREATE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @TRUE, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @FALSE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  br label %88

85:                                               ; preds = %70
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32*, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @EKEEPLOOKING, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = call i32 @panic(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  %104 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %105 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @NAMEI_CONTLOOKUP, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %103
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %7, align 4
  br label %199

114:                                              ; preds = %88
  br label %132

115:                                              ; preds = %58
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @COMPOUND_OPEN_STATUS_DID_CREATE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 0
  %125 = load i32*, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @TRUE, align 4
  %127 = load i32*, i32** %12, align 8
  store i32 %126, i32* %127, align 4
  br label %131

128:                                              ; preds = %115
  %129 = load i32, i32* @TRUE, align 4
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %118
  br label %132

132:                                              ; preds = %131, %114
  %133 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %134 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %133, i32 0, i32 3
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %18, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %184

139:                                              ; preds = %132
  store i32 0, i32* %19, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %146 = load i32, i32* %19, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NULLVP, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %156 = load i32, i32* %19, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %19, align 4
  br label %158

158:                                              ; preds = %154, %148
  %159 = load i32, i32* %19, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %164 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %165 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %169 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %173 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %19, align 4
  %177 = call i32 @vnode_update_identity(%struct.TYPE_15__* %162, %struct.TYPE_15__* %163, i32 %167, i32 %171, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %161, %158
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %180 = call i32 @vnode_put(%struct.TYPE_15__* %179)
  %181 = load i64, i64* @NULLVP, align 8
  %182 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %183 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %178, %132
  br label %185

185:                                              ; preds = %184, %56
  %186 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %187 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @NULLVP, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %193 = call i32 @vnode_put(%struct.TYPE_15__* %192)
  %194 = load i64, i64* @NULLVP, align 8
  %195 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %196 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %191, %185
  %198 = load i32, i32* %17, align 4
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %197, %112
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i32 @vnode_compound_open_available(%struct.TYPE_15__*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @vn_authorize_create(%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.vnode_attr*, i32, i32*) #1

declare dso_local i32 @vn_create(%struct.TYPE_15__*, %struct.TYPE_15__**, %struct.nameidata*, %struct.vnode_attr*, i32, i32, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vnode_update_identity(%struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @vnode_put(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

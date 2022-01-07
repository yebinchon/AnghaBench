; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.componentname }
%struct.componentname = type { i32 }
%struct.vnode_attr = type { i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%p    CREATE - '%s'\00", align 1
@VN_CREATE_NOINHERIT = common dso_local global i32 0, align 4
@VA_NOINHERIT = common dso_local global i32 0, align 4
@VN_CREATE_NOAUTH = common dso_local global i32 0, align 4
@VA_NOAUTH = common dso_local global i32 0, align 4
@VN_CREATE_DOOPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Open parameters, but not a regular file.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Mode for open, but not trying to open...\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"vnode_create: unknown vtype %d\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"%p    CREATE - error %d returned by filesystem\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"     CREATE - doing fallback with ACL %p\00", align 1
@NULLVP = common dso_local global i64 0, align 8
@kdebug_enable = common dso_local global i64 0, align 8
@VNODE_LABEL_CREATE = common dso_local global i32 0, align 4
@VN_CREATE_NOLABEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vn_create(i64 %0, i64* %1, %struct.nameidata* %2, %struct.vnode_attr* %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.nameidata*, align 8
  %13 = alloca %struct.vnode_attr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.componentname*, align 8
  %23 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64* %1, i64** %11, align 8
  store %struct.nameidata* %2, %struct.nameidata** %12, align 8
  store %struct.vnode_attr* %3, %struct.vnode_attr** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 0, i64* %20, align 8
  %24 = load %struct.nameidata*, %struct.nameidata** %12, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 0
  store %struct.componentname* %25, %struct.componentname** %22, align 8
  store i64 0, i64* %18, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.nameidata*, %struct.nameidata** %12, align 8
  %28 = call i64 @namei_compound_available(i64 %26, %struct.nameidata* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i64, i64* @TRUE, align 8
  br label %34

32:                                               ; preds = %8
  %33 = load i64, i64* @FALSE, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  store i64 %35, i64* %21, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.componentname*, %struct.componentname** %22, align 8
  %38 = getelementptr inbounds %struct.componentname, %struct.componentname* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i64, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %39)
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @VN_CREATE_NOINHERIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load i32, i32* @VA_NOINHERIT, align 4
  %47 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %48 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %34
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @VN_CREATE_NOAUTH, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @VA_NOAUTH, align 4
  %58 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %59 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %65 = load i32, i32* %17, align 4
  %66 = call i64 @vn_attribute_prepare(i64 %63, %struct.vnode_attr* %64, i32* %23, i32 %65)
  store i64 %66, i64* %18, align 8
  %67 = load i64, i64* %18, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* %18, align 8
  store i64 %70, i64* %9, align 8
  br label %210

71:                                               ; preds = %62
  %72 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %73 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 129
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @VN_CREATE_DOOPEN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %79, %76
  %88 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84, %71
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @VN_CREATE_DOOPEN, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %92, %89
  %100 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %101 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %127 [
    i32 129, label %103
    i32 131, label %113
    i32 128, label %120
    i32 130, label %120
    i32 133, label %120
    i32 132, label %120
  ]

103:                                              ; preds = %99
  %104 = load i64, i64* %10, align 8
  %105 = load i64*, i64** %11, align 8
  %106 = load %struct.nameidata*, %struct.nameidata** %12, align 8
  %107 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = load i32, i32* %17, align 4
  %112 = call i64 @vn_create_reg(i64 %104, i64* %105, %struct.nameidata* %106, %struct.vnode_attr* %107, i32 %108, i32 %109, i32* %110, i32 %111)
  store i64 %112, i64* %18, align 8
  br label %132

113:                                              ; preds = %99
  %114 = load i64, i64* %10, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = load %struct.nameidata*, %struct.nameidata** %12, align 8
  %117 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i64 @vn_mkdir(i64 %114, i64* %115, %struct.nameidata* %116, %struct.vnode_attr* %117, i32 %118)
  store i64 %119, i64* %18, align 8
  br label %132

120:                                              ; preds = %99, %99, %99, %99
  %121 = load i64, i64* %10, align 8
  %122 = load i64*, i64** %11, align 8
  %123 = load %struct.componentname*, %struct.componentname** %22, align 8
  %124 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i64 @VNOP_MKNOD(i64 %121, i64* %122, %struct.componentname* %123, %struct.vnode_attr* %124, i32 %125)
  store i64 %126, i64* %18, align 8
  br label %132

127:                                              ; preds = %99
  %128 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %129 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %120, %113, %103
  %133 = load i64, i64* %18, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %18, align 8
  %138 = call i32 (i8*, i64, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %136, i64 %137)
  br label %205

139:                                              ; preds = %132
  %140 = load i64*, i64** %11, align 8
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %20, align 8
  %142 = load i64, i64* %18, align 8
  store i64 %142, i64* %19, align 8
  %143 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %144 = call i32 @VATTR_ALL_SUPPORTED(%struct.vnode_attr* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %161, label %146

146:                                              ; preds = %139
  %147 = load i64*, i64** %11, align 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %152 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = call i32 (i8*, i64, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %154)
  %156 = load i64*, i64** %11, align 8
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %159 = load i32, i32* %17, align 4
  %160 = call i64 @vnode_setattr_fallback(i64 %157, %struct.vnode_attr* %158, i32 %159)
  store i64 %160, i64* %18, align 8
  br label %161

161:                                              ; preds = %150, %146, %139
  %162 = load i64, i64* %18, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %192

164:                                              ; preds = %161
  %165 = load i64, i64* %20, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %164
  %168 = load i64, i64* %21, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %167
  %171 = load i64, i64* %19, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %175 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 129
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i64, i64* %20, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @VNOP_CLOSE(i64 %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %173, %170, %167
  %184 = load i64, i64* %21, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = load i64*, i64** %11, align 8
  store i64 0, i64* %187, align 8
  %188 = load i64, i64* %20, align 8
  %189 = call i32 @vnode_put(i64 %188)
  %190 = load i64, i64* @NULLVP, align 8
  store i64 %190, i64* %20, align 8
  br label %191

191:                                              ; preds = %186, %183
  br label %192

192:                                              ; preds = %191, %164, %161
  %193 = load i64, i64* @kdebug_enable, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load i64*, i64** %11, align 8
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i64*, i64** %11, align 8
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.componentname*, %struct.componentname** %22, align 8
  %203 = call i32 @kdebug_lookup(i64 %201, %struct.componentname* %202)
  br label %204

204:                                              ; preds = %199, %195, %192
  br label %205

205:                                              ; preds = %204, %135
  %206 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %207 = load i32, i32* %23, align 4
  %208 = call i32 @vn_attribute_cleanup(%struct.vnode_attr* %206, i32 %207)
  %209 = load i64, i64* %18, align 8
  store i64 %209, i64* %9, align 8
  br label %210

210:                                              ; preds = %205, %69
  %211 = load i64, i64* %9, align 8
  ret i64 %211
}

declare dso_local i64 @namei_compound_available(i64, %struct.nameidata*) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, i64, ...) #1

declare dso_local i64 @vn_attribute_prepare(i64, %struct.vnode_attr*, i32*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @vn_create_reg(i64, i64*, %struct.nameidata*, %struct.vnode_attr*, i32, i32, i32*, i32) #1

declare dso_local i64 @vn_mkdir(i64, i64*, %struct.nameidata*, %struct.vnode_attr*, i32) #1

declare dso_local i64 @VNOP_MKNOD(i64, i64*, %struct.componentname*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_ALL_SUPPORTED(%struct.vnode_attr*) #1

declare dso_local i64 @vnode_setattr_fallback(i64, %struct.vnode_attr*, i32) #1

declare dso_local i32 @VNOP_CLOSE(i64, i32, i32) #1

declare dso_local i32 @vnode_put(i64) #1

declare dso_local i32 @kdebug_lookup(i64, %struct.componentname*) #1

declare dso_local i32 @vn_attribute_cleanup(%struct.vnode_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

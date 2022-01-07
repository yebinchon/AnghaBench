; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_attr_authorize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_attr_authorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct._vnode_authorize_context = type { i64, i64, %struct.vnode_attr*, i8*, %struct.vnode_attr*, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i8* null, align 8
@KAUTH_VNODE_NOIMMUTABLE = common dso_local global i32 0, align 4
@KAUTH_VNODE_ACCESS = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_RIGHTS = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@KAUTH_VNODE_DELETE = common dso_local global i32 0, align 4
@KAUTH_VNODE_DELETE_CHILD = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@KAUTH_VNODE_EXECUTE = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"vnode attrs not complete for vnode_attr_authorize\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_attr_authorize(%struct.vnode_attr* %0, %struct.vnode_attr* %1, %struct.TYPE_5__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca %struct.vnode_attr*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._vnode_authorize_context, align 8
  %12 = alloca %struct._vnode_authorize_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode_attr* %0, %struct.vnode_attr** %6, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store %struct._vnode_authorize_context* %11, %struct._vnode_authorize_context** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %12, align 8
  %21 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @NULLVP, align 8
  %23 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %12, align 8
  %24 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %26 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %12, align 8
  %27 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %26, i32 0, i32 4
  store %struct.vnode_attr* %25, %struct.vnode_attr** %27, align 8
  %28 = load i8*, i8** @NULLVP, align 8
  %29 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %12, align 8
  %30 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %32 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %12, align 8
  %33 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %32, i32 0, i32 2
  store %struct.vnode_attr* %31, %struct.vnode_attr** %33, align 8
  %34 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %12, align 8
  %35 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %12, align 8
  %37 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @KAUTH_VNODE_NOIMMUTABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @KAUTH_VNODE_ACCESS, align 4
  %46 = load i32, i32* @KAUTH_VNODE_NOIMMUTABLE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @KAUTH_VNODE_WRITE_RIGHTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %5
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %94

57:                                               ; preds = %54
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MNT_RDONLY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %57
  %65 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %66 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @VREG, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %92, label %70

70:                                               ; preds = %64
  %71 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %72 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VDIR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %92, label %76

76:                                               ; preds = %70
  %77 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %78 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VLNK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @KAUTH_VNODE_DELETE_CHILD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %82, %76, %70, %64
  %93 = load i32, i32* @EROFS, align 4
  store i32 %93, i32* %17, align 4
  br label %170

94:                                               ; preds = %87, %57, %54, %5
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %101 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @VREG, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = icmp ne %struct.TYPE_5__* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MNT_NOEXEC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @EACCES, align 4
  store i32 %116, i32* %17, align 4
  br label %170

117:                                              ; preds = %108, %105, %99, %94
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @vfs_context_issuser(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %124 = load i32, i32* @KAUTH_VNODE_WRITE_RIGHTS, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %170

129:                                              ; preds = %121
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %16, align 4
  br label %156

131:                                              ; preds = %117
  %132 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %133 = load i32, i32* @va_uid, align 4
  %134 = call i32 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  %137 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %138 = load i32, i32* @va_gid, align 4
  %139 = call i32 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %143 = icmp ne %struct.TYPE_5__* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %146 = call i64 @vfs_extendedsecurity(%struct.TYPE_5__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %150 = load i32, i32* @va_acl, align 4
  %151 = call i32 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %148, %136, %131
  %154 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %148, %144, %141
  br label %156

156:                                              ; preds = %155, %129
  %157 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %12, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @FALSE, align 4
  %163 = call i32 @vnode_attr_authorize_internal(%struct._vnode_authorize_context* %157, %struct.TYPE_5__* %158, i32 %159, i32 %160, i32* %15, i32 %161, i32 %162)
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* @EPERM, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %156
  %168 = load i32, i32* @EACCES, align 4
  store i32 %168, i32* %17, align 4
  br label %169

169:                                              ; preds = %167, %156
  br label %170

170:                                              ; preds = %169, %128, %115, %92
  %171 = load i32, i32* %17, align 4
  ret i32 %171
}

declare dso_local i64 @vfs_context_issuser(i32) #1

declare dso_local i32 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i64 @vfs_extendedsecurity(%struct.TYPE_5__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vnode_attr_authorize_internal(%struct._vnode_authorize_context*, %struct.TYPE_5__*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

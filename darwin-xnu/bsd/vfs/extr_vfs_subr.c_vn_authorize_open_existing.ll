; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_open_existing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_open_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.componentname = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"NULL ndp\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"reserved not NULL.\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@VSOCK = common dso_local global i64 0, align 8
@VT_FDESC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VLNK = common dso_local global i64 0, align 8
@O_NOFOLLOW = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@NAMEI_TRAILINGSLASH = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@KAUTH_VNODE_APPEND_DATA = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MNT_MULTILABEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_authorize_open_existing(%struct.TYPE_13__* %0, %struct.componentname* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.componentname* %1, %struct.componentname** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.componentname*, %struct.componentname** %8, align 8
  %15 = getelementptr inbounds %struct.componentname, %struct.componentname* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = call i32 @panic(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @O_DIRECTORY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VDIR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOTDIR, align 4
  store i32 %37, i32* %6, align 4
  br label %137

38:                                               ; preds = %30, %25
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VSOCK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VT_FDESC, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %51, i32* %6, align 4
  br label %137

52:                                               ; preds = %44, %38
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VLNK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @O_NOFOLLOW, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @ELOOP, align 4
  store i32 %64, i32* %6, align 4
  br label %137

65:                                               ; preds = %58, %52
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = call i64 @vnode_isdir(%struct.TYPE_13__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FWRITE, align 4
  %72 = load i32, i32* @O_TRUNC, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @EISDIR, align 4
  store i32 %77, i32* %6, align 4
  br label %137

78:                                               ; preds = %69, %65
  %79 = load %struct.componentname*, %struct.componentname** %8, align 8
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NAMEI_TRAILINGSLASH, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %78
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @VDIR, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @ENOTDIR, align 4
  store i32 %94, i32* %6, align 4
  br label %137

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %78
  store i32 0, i32* %12, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @FREAD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @FWRITE, align 4
  %108 = load i32, i32* @O_TRUNC, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @O_APPEND, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @O_TRUNC, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @KAUTH_VNODE_APPEND_DATA, align 4
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %130

126:                                              ; preds = %117, %112
  %127 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %105
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @vnode_authorize(%struct.TYPE_13__* %132, i32* null, i32 %133, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %131, %93, %76, %63, %50, %36
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @vnode_isdir(%struct.TYPE_13__*) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_13__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

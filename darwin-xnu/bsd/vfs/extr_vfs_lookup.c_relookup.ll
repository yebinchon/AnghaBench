; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_relookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_relookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.componentname = type { i32, i8*, i64, i32 }

@LOCKPARENT = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4
@RDONLY = common dso_local global i32 0, align 4
@ISSYMLINK = common dso_local global i32 0, align 4
@NOCACHE = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SAVESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"lookup: SAVESTART\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@DELETE = common dso_local global i64 0, align 8
@RENAME = common dso_local global i64 0, align 8
@FOLLOW = common dso_local global i32 0, align 4
@VLNK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relookup(%struct.vnode* %0, %struct.vnode** %1, %struct.componentname* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vnode** %1, %struct.vnode*** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  store %struct.vnode* null, %struct.vnode** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.componentname*, %struct.componentname** %7, align 8
  %14 = getelementptr inbounds %struct.componentname, %struct.componentname* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.componentname*, %struct.componentname** %7, align 8
  %17 = getelementptr inbounds %struct.componentname, %struct.componentname* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LOCKPARENT, align 4
  %20 = load i32, i32* @WANTPARENT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.componentname*, %struct.componentname** %7, align 8
  %24 = getelementptr inbounds %struct.componentname, %struct.componentname* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RDONLY, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @ISSYMLINK, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.componentname*, %struct.componentname** %7, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.componentname*, %struct.componentname** %7, align 8
  %35 = getelementptr inbounds %struct.componentname, %struct.componentname* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NOCACHE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %3
  %41 = load i32, i32* @MAKEENTRY, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.componentname*, %struct.componentname** %7, align 8
  %44 = getelementptr inbounds %struct.componentname, %struct.componentname* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %53

47:                                               ; preds = %3
  %48 = load i32, i32* @MAKEENTRY, align 4
  %49 = load %struct.componentname*, %struct.componentname** %7, align 8
  %50 = getelementptr inbounds %struct.componentname, %struct.componentname* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.vnode*, %struct.vnode** %5, align 8
  store %struct.vnode* %54, %struct.vnode** %8, align 8
  %55 = load %struct.componentname*, %struct.componentname** %7, align 8
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %53
  %63 = load %struct.componentname*, %struct.componentname** %7, align 8
  %64 = getelementptr inbounds %struct.componentname, %struct.componentname* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LOOKUP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %62
  %72 = load i32, i32* @EISDIR, align 4
  store i32 %72, i32* %11, align 4
  br label %140

73:                                               ; preds = %68
  %74 = load %struct.vnode*, %struct.vnode** %8, align 8
  %75 = getelementptr inbounds %struct.vnode, %struct.vnode* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VDIR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOTDIR, align 4
  store i32 %80, i32* %11, align 4
  br label %140

81:                                               ; preds = %73
  %82 = load %struct.vnode*, %struct.vnode** %8, align 8
  %83 = call i64 @vnode_get(%struct.vnode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @ENOENT, align 4
  store i32 %86, i32* %11, align 4
  br label %140

87:                                               ; preds = %81
  %88 = load %struct.vnode*, %struct.vnode** %8, align 8
  %89 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %88, %struct.vnode** %89, align 8
  %90 = load %struct.componentname*, %struct.componentname** %7, align 8
  %91 = getelementptr inbounds %struct.componentname, %struct.componentname* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SAVESTART, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %87
  store i32 0, i32* %4, align 4
  br label %143

99:                                               ; preds = %53
  %100 = load %struct.vnode*, %struct.vnode** %8, align 8
  %101 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %102 = load %struct.componentname*, %struct.componentname** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @VNOP_LOOKUP(%struct.vnode* %100, %struct.vnode** %101, %struct.componentname* %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @EJUSTRETURN, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %140

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @EROFS, align 4
  store i32 %115, i32* %11, align 4
  br label %140

116:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %143

117:                                              ; preds = %99
  %118 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %119 = load %struct.vnode*, %struct.vnode** %118, align 8
  store %struct.vnode* %119, %struct.vnode** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load %struct.componentname*, %struct.componentname** %7, align 8
  %124 = getelementptr inbounds %struct.componentname, %struct.componentname* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DELETE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.componentname*, %struct.componentname** %7, align 8
  %130 = getelementptr inbounds %struct.componentname, %struct.componentname* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RENAME, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128, %122
  %135 = load i32, i32* @EROFS, align 4
  store i32 %135, i32* %11, align 4
  br label %137

136:                                              ; preds = %128, %117
  store i32 0, i32* %4, align 4
  br label %143

137:                                              ; preds = %134
  %138 = load %struct.vnode*, %struct.vnode** %8, align 8
  %139 = call i32 @vnode_put(%struct.vnode* %138)
  br label %140

140:                                              ; preds = %137, %114, %110, %85, %79, %71
  %141 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* null, %struct.vnode** %141, align 8
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %140, %136, %116, %98
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @vnode_get(%struct.vnode*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VNOP_LOOKUP(%struct.vnode*, %struct.vnode**, %struct.componentname*, i32) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

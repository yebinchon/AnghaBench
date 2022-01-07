; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_safe_getpath.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_safe_getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i8*, %struct.TYPE_4__*, %struct.vnode* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"safe_getpath: failed to get the path for vp %p (%s) : err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"no-name\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safe_getpath(%struct.vnode* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @vn_getpath(%struct.vnode* %17, i8* %18, i32* %12)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @MAXPATHLEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %66

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 47, i8* %35, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @MAXPATHLEN, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i64 @strlcpy(i8* %39, i8* %40, i32 %43)
  %45 = add nsw i64 %44, 1
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @MAXPATHLEN, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %30
  %54 = load i32*, i32** %10, align 8
  store i32 1, i32* %54, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i8* @my_strrchr(i8* %55, i8 signext 47)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i8*, i8** %13, align 8
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %59, %53
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %61, %30
  br label %66

66:                                               ; preds = %65, %27
  br label %142

67:                                               ; preds = %22, %5
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32*, i32** %10, align 8
  store i32 1, i32* %71, align 4
  br label %141

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %140

75:                                               ; preds = %72
  %76 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %76, %struct.vnode** %14, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.vnode*, %struct.vnode** %6, align 8
  %82 = load %struct.vnode*, %struct.vnode** %6, align 8
  %83 = getelementptr inbounds %struct.vnode, %struct.vnode* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.vnode*, %struct.vnode** %6, align 8
  %88 = getelementptr inbounds %struct.vnode, %struct.vnode* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i8* [ %89, %86 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %90 ]
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), %struct.vnode* %81, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %75
  %96 = load i32*, i32** %10, align 8
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %135, %95
  %98 = load %struct.vnode*, %struct.vnode** %14, align 8
  %99 = getelementptr inbounds %struct.vnode, %struct.vnode* %98, i32 0, i32 2
  %100 = load %struct.vnode*, %struct.vnode** %99, align 8
  %101 = icmp ne %struct.vnode* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.vnode*, %struct.vnode** %14, align 8
  %104 = getelementptr inbounds %struct.vnode, %struct.vnode* %103, i32 0, i32 2
  %105 = load %struct.vnode*, %struct.vnode** %104, align 8
  store %struct.vnode* %105, %struct.vnode** %14, align 8
  br label %126

106:                                              ; preds = %97
  %107 = load %struct.vnode*, %struct.vnode** %14, align 8
  %108 = getelementptr inbounds %struct.vnode, %struct.vnode* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = icmp ne %struct.TYPE_4__* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.vnode*, %struct.vnode** %14, align 8
  %114 = getelementptr inbounds %struct.vnode, %struct.vnode* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @strlcpy(i8* %112, i8* %118, i32 %119)
  br label %139

121:                                              ; preds = %106
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @strlcpy(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  store i32 2, i32* %12, align 4
  store %struct.vnode* null, %struct.vnode** %14, align 8
  br label %125

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %102
  %127 = load %struct.vnode*, %struct.vnode** %14, align 8
  %128 = icmp eq %struct.vnode* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %139

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %12, align 4
  %132 = load %struct.vnode*, %struct.vnode** %14, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @vn_getpath(%struct.vnode* %132, i8* %133, i32* %12)
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @ENOSPC, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %97, label %139

139:                                              ; preds = %135, %129, %111
  br label %140

140:                                              ; preds = %139, %72
  br label %141

141:                                              ; preds = %140, %70
  br label %142

142:                                              ; preds = %141, %66
  %143 = load i32, i32* %12, align 4
  ret i32 %143
}

declare dso_local i32 @vn_getpath(%struct.vnode*, i8*, i32*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @my_strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, %struct.vnode*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

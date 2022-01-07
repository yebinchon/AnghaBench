; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_dev_finddir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_tree.c_dev_finddir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }

@dev_root = common dso_local global %struct.TYPE_20__* null, align 8
@DEV_DIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@DEVMAXPATHSIZE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_17__*, i32, %struct.TYPE_17__**, i32)* @dev_finddir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_finddir(i8* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_17__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_17__** %3, %struct.TYPE_17__*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %21 = icmp ne %struct.TYPE_17__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** @dev_root, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %8, align 8
  br label %26

26:                                               ; preds = %22, %5
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DEV_DIR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOTDIR, align 4
  store i32 %33, i32* %6, align 4
  br label %149

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load i32, i32* @DEVMAXPATHSIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %41, i32* %6, align 4
  br label %149

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %14, align 8
  br label %44

44:                                               ; preds = %49, %42
  %45 = load i8*, i8** %14, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %14, align 8
  br label %44

52:                                               ; preds = %44
  %53 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %53, align 8
  br label %54

54:                                               ; preds = %52, %146
  %55 = load i32, i32* @DEVMAXPATHSIZE, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %15, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %16, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %65, align 8
  store i32 5, i32* %19, align 4
  br label %143

66:                                               ; preds = %54
  %67 = load i8*, i8** %14, align 8
  store i8* %67, i8** %18, align 8
  br label %68

68:                                               ; preds = %80, %66
  %69 = load i8*, i8** %14, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 47
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %14, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %14, align 8
  br label %68

83:                                               ; preds = %78
  %84 = load i8*, i8** %18, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = add nsw i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i32 @strlcpy(i8* %58, i8* %84, i32 %91)
  %93 = load i8*, i8** %14, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 47
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %14, align 8
  br label %100

100:                                              ; preds = %97, %83
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = call %struct.TYPE_18__* @dev_findname(%struct.TYPE_17__* %101, i8* %58)
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %17, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %104 = icmp ne %struct.TYPE_18__* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %12, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DEV_DIR, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @ENOTDIR, align 4
  store i32 %115, i32* %13, align 4
  store i32 5, i32* %19, align 4
  br label %143

116:                                              ; preds = %105
  br label %141

117:                                              ; preds = %100
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @ENOENT, align 4
  store i32 %121, i32* %13, align 4
  store i32 5, i32* %19, align 4
  br label %143

122:                                              ; preds = %117
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %124 = load i64, i64* @DEV_DIR, align 8
  %125 = call i32 @dev_add_entry(i8* %58, %struct.TYPE_17__* %123, i64 %124, i32* null, i32* null, i32* null, %struct.TYPE_18__** %17)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 5, i32* %19, align 4
  br label %143

129:                                              ; preds = %122
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  store %struct.TYPE_17__* %132, %struct.TYPE_17__** %12, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @devfs_propogate(%struct.TYPE_19__* %137, %struct.TYPE_18__* %138, i32 %139)
  br label %141

141:                                              ; preds = %129, %116
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %8, align 8
  store i32 0, i32* %19, align 4
  br label %143

143:                                              ; preds = %141, %128, %120, %114, %63
  %144 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %19, align 4
  switch i32 %145, label %151 [
    i32 0, label %146
    i32 5, label %147
  ]

146:                                              ; preds = %143
  br label %54

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %40, %32
  %150 = load i32, i32* %6, align 4
  ret i32 %150

151:                                              ; preds = %143
  unreachable
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @dev_findname(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @dev_add_entry(i8*, %struct.TYPE_17__*, i64, i32*, i32*, i32*, %struct.TYPE_18__**) #1

declare dso_local i32 @devfs_propogate(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

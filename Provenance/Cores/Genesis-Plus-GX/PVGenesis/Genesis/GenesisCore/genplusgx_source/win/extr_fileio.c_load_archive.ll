; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_fileio.c_load_archive.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_fileio.c_load_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UNZ_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_archive(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @check_zip(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %104

19:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32* @unzOpen(i8* %20)
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %133

25:                                               ; preds = %19
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @unzGoToFirstFile(i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @UNZ_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @unzClose(i32* %32)
  store i32 0, i32* %5, align 4
  br label %133

34:                                               ; preds = %25
  %35 = load i32*, i32** %14, align 8
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %37 = call i32 @unzGetCurrentFileInfo(i32* %35, %struct.TYPE_3__* %11, i8* %36, i32 256, i32* null, i32 0, i32* null, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @UNZ_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @unzClose(i32* %42)
  store i32 0, i32* %5, align 4
  br label %133

44:                                               ; preds = %34
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = sub nsw i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 %52
  %54 = call i32 @strncpy(i8* %48, i8* %53, i32 3)
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @unzOpenCurrentFile(i32* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @UNZ_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @unzClose(i32* %64)
  store i32 0, i32* %5, align 4
  br label %133

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i32*, i32** %14, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @unzReadCurrentFile(i32* %75, i8* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @unzCloseCurrentFile(i32* %83)
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @unzClose(i32* %85)
  store i32 0, i32* %5, align 4
  br label %133

87:                                               ; preds = %74
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @unzCloseCurrentFile(i32* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @UNZ_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @unzClose(i32* %94)
  store i32 0, i32* %5, align 4
  br label %133

96:                                               ; preds = %87
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @unzClose(i32* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @UNZ_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %133

103:                                              ; preds = %96
  br label %131

104:                                              ; preds = %4
  %105 = load i8*, i8** %6, align 8
  %106 = call i32* @gzopen(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %106, i32** %15, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %133

110:                                              ; preds = %104
  %111 = load i32*, i32** %15, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @gzread(i32* %111, i8* %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @strlen(i8* %120)
  %122 = sub nsw i32 %121, 3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  %125 = call i32 @strncpy(i8* %118, i8* %124, i32 3)
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %117, %110
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @gzclose(i32* %129)
  br label %131

131:                                              ; preds = %128, %103
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %109, %102, %93, %82, %63, %41, %31, %24
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @check_zip(i8*) #1

declare dso_local i32* @unzOpen(i8*) #1

declare dso_local i32 @unzGoToFirstFile(i32*) #1

declare dso_local i32 @unzClose(i32*) #1

declare dso_local i32 @unzGetCurrentFileInfo(i32*, %struct.TYPE_3__*, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @unzOpenCurrentFile(i32*) #1

declare dso_local i32 @unzReadCurrentFile(i32*, i8*, i32) #1

declare dso_local i32 @unzCloseCurrentFile(i32*) #1

declare dso_local i32* @gzopen(i8*, i8*) #1

declare dso_local i32 @gzread(i32*, i8*, i32) #1

declare dso_local i32 @gzclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

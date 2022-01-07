; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_fileio.c_load_archive.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_fileio.c_load_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UNZ_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_archive(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @check_zip(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %100

15:                                               ; preds = %2
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @unzOpen(i8* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %126

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @unzGoToFirstFile(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @UNZ_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @unzClose(i32* %28)
  store i32* null, i32** %3, align 8
  br label %126

30:                                               ; preds = %21
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @unzGetCurrentFileInfo(i32* %31, %struct.TYPE_3__* %9, i8* %32, i32 128, i32* null, i32 0, i32* null, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @UNZ_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @unzClose(i32* %38)
  store i32* null, i32** %3, align 8
  br label %126

40:                                               ; preds = %30
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @unzOpenCurrentFile(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @UNZ_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @unzClose(i32* %47)
  store i32* null, i32** %3, align 8
  br label %126

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32* @malloc(i32 %52)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @unzClose(i32* %57)
  store i32* null, i32** %3, align 8
  br label %126

59:                                               ; preds = %49
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @unzReadCurrentFile(i32* %60, i32* %61, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @free(i32* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @unzCloseCurrentFile(i32* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @unzClose(i32* %74)
  store i32* null, i32** %3, align 8
  br label %126

76:                                               ; preds = %59
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @unzCloseCurrentFile(i32* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @UNZ_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @free(i32* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @unzClose(i32* %85)
  store i32* null, i32** %3, align 8
  br label %126

87:                                               ; preds = %76
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @unzClose(i32* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @UNZ_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @free(i32* %94)
  store i32* null, i32** %3, align 8
  br label %126

96:                                               ; preds = %87
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %7, align 8
  store i32* %99, i32** %3, align 8
  br label %126

100:                                              ; preds = %2
  store i32* null, i32** %11, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = call i32* @gzopen(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %102, i32** %11, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32* null, i32** %3, align 8
  br label %126

106:                                              ; preds = %100
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @gzsize(i32* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32* @malloc(i32 %109)
  store i32* %110, i32** %7, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @gzclose(i32* %114)
  store i32* null, i32** %3, align 8
  br label %126

116:                                              ; preds = %106
  %117 = load i32*, i32** %11, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @gzread(i32* %117, i32* %118, i32 %119)
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @gzclose(i32* %121)
  %123 = load i32, i32* %6, align 4
  %124 = load i32*, i32** %5, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %7, align 8
  store i32* %125, i32** %3, align 8
  br label %126

126:                                              ; preds = %116, %113, %105, %96, %93, %82, %69, %56, %46, %37, %27, %20
  %127 = load i32*, i32** %3, align 8
  ret i32* %127
}

declare dso_local i64 @check_zip(i8*) #1

declare dso_local i32* @unzOpen(i8*) #1

declare dso_local i32 @unzGoToFirstFile(i32*) #1

declare dso_local i32 @unzClose(i32*) #1

declare dso_local i32 @unzGetCurrentFileInfo(i32*, %struct.TYPE_3__*, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @unzOpenCurrentFile(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @unzReadCurrentFile(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @unzCloseCurrentFile(i32*) #1

declare dso_local i32* @gzopen(i8*, i8*) #1

declare dso_local i32 @gzsize(i32*) #1

declare dso_local i32 @gzclose(i32*) #1

declare dso_local i32 @gzread(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

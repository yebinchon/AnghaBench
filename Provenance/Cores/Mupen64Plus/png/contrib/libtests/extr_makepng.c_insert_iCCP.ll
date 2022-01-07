; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_insert_iCCP.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_insert_iCCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: file too long (%lu) for an ICC profile\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: fake data too long (%lu) for an ICC profile\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"--insert iCCP \22%s\22: unrecognized\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"  use '<' to read a file: \22<filename\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"makepng: --insert iCCP %s: profile length made a multiple of 4\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"--insert iCCP %s: profile length field wrong:\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"  actual %lu, recorded value %lu (corrected)\0A\00", align 1
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32**)* @insert_iCCP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_iCCP(i32 %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store i64* null, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @check_param_count(i32 %15, i32 2)
  %17 = load i32**, i32*** %8, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %68 [
    i32 60, label %22
    i32 48, label %42
    i32 49, label %42
    i32 50, label %42
    i32 51, label %42
    i32 52, label %42
    i32 53, label %42
    i32 54, label %42
    i32 55, label %42
    i32 56, label %42
    i32 57, label %42
  ]

22:                                               ; preds = %4
  %23 = load i32**, i32*** %8, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = call i32 @load_file(i32* %26, i64** %9)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ugt i32 %28, -4
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32**, i32*** %8, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %35, i64 %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %22
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %10, align 4
  br label %77

42:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %43 = load i32**, i32*** %8, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @load_fake(i32* %45, i64** %9)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  %51 = icmp ugt i32 %50, -1
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32**, i32*** %8, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %56, i64 %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %49
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, -4
  store i32 %63, i32* %10, align 4
  %64 = load i64*, i64** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @png_save_uint_32(i64* %64, i32 %65)
  br label %77

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %4, %67
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32**, i32*** %8, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %72)
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %61, %40
  store i32 1, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 3
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load i32, i32* @stderr, align 4
  %83 = load i32**, i32*** %8, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32* %85)
  br label %87

87:                                               ; preds = %91, %81
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i64*, i64** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  store i64 0, i64* %96, align 8
  br label %87

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %77
  %99 = load i64*, i64** %9, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %101, label %126

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 3
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load i64*, i64** %9, align 8
  %106 = call i32 @png_get_uint_32(i64* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i32, i32* @stderr, align 4
  %112 = load i32**, i32*** %8, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32* %114)
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %118, i64 %120)
  %122 = load i64*, i64** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @png_save_uint_32(i64* %122, i32 %123)
  br label %125

125:                                              ; preds = %110, %104
  br label %126

126:                                              ; preds = %125, %101, %98
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = load i64*, i64** %9, align 8
  %131 = icmp ne i64* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load i32, i32* %10, align 4
  %134 = icmp sge i32 %133, 4
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32**, i32*** %8, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @PNG_COMPRESSION_TYPE_BASE, align 4
  %142 = load i64*, i64** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @png_set_iCCP(i32 %136, i32 %137, i32* %140, i32 %141, i64* %142, i32 %143)
  br label %145

145:                                              ; preds = %135, %132, %129, %126
  %146 = load i64*, i64** %9, align 8
  %147 = icmp ne i64* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i64*, i64** %9, align 8
  %150 = call i32 @free(i64* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = call i32 @exit(i32 1) #3
  unreachable

156:                                              ; preds = %151
  ret void
}

declare dso_local i32 @check_param_count(i32, i32) #1

declare dso_local i32 @load_file(i32*, i64**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @load_fake(i32*, i64**) #1

declare dso_local i32 @png_save_uint_32(i64*, i32) #1

declare dso_local i32 @png_get_uint_32(i64*) #1

declare dso_local i32 @png_set_iCCP(i32, i32, i32*, i32, i64*, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/utils/extr_sha1_main.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/utils/extr_sha1_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA1Context = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"sha: unable to open file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"sha: could not compute message digest for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%08X %08X %08X %08X %08X - %s\0A\00", align 1
@_O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.SHA1Context, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @string_is_equal(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @string_is_equal(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %14
  %27 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %151

28:                                               ; preds = %20, %2
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %147, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %150

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @string_is_equal(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %39
  %51 = load i32*, i32** @stdin, align 8
  store i32* %51, i32** %7, align 8
  store i32 1, i32* %10, align 4
  br label %69

52:                                               ; preds = %42
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32* @fopen(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %58, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  store i32 2, i32* %3, align 4
  br label %151

68:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %147

76:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %69
  %78 = call i32 @SHA1Reset(%struct.SHA1Context* %6)
  %79 = load i32*, i32** %7, align 8
  %80 = call signext i8 @fgetc(i32* %79)
  store i8 %80, i8* %8, align 1
  br label %81

81:                                               ; preds = %86, %77
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @feof(i32* %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = call i32 @SHA1Input(%struct.SHA1Context* %6, i8* %8, i32 1)
  %88 = load i32*, i32** %7, align 8
  %89 = call signext i8 @fgetc(i32* %88)
  store i8 %89, i8* %8, align 1
  br label %81

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @fclose(i32* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = call i32 @SHA1Result(%struct.SHA1Context* %6)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %110

104:                                              ; preds = %99
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  br label %110

110:                                              ; preds = %104, %103
  %111 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %103 ], [ %109, %104 ]
  %112 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  br label %146

113:                                              ; preds = %96
  %114 = getelementptr inbounds %struct.SHA1Context, %struct.SHA1Context* %6, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.SHA1Context, %struct.SHA1Context* %6, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.SHA1Context, %struct.SHA1Context* %6, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.SHA1Context, %struct.SHA1Context* %6, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.SHA1Context, %struct.SHA1Context* %6, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %113
  br label %143

137:                                              ; preds = %113
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  br label %143

143:                                              ; preds = %137, %136
  %144 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %136 ], [ %142, %137 ]
  %145 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %117, i32 %121, i32 %125, i32 %129, i32 %133, i8* %144)
  br label %146

146:                                              ; preds = %143, %110
  br label %147

147:                                              ; preds = %146, %75
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %29

150:                                              ; preds = %29
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %60, %26
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @SHA1Reset(%struct.SHA1Context*) #1

declare dso_local signext i8 @fgetc(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @SHA1Input(%struct.SHA1Context*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @SHA1Result(%struct.SHA1Context*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

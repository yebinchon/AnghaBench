; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_pnm2png.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_pnm2png.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PNM2PNG\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Error:  alpha-channel file %s does not exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error:  unknown option %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error:  file %s does not exist\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Error:  can not create PNG-file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Error:  too many parameters\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Error:  unsuccessful converting to PNG-image\0A\00", align 1
@O_BINARY = common dso_local global i32 0, align 4
@STDIN = common dso_local global i32 0, align 4
@STDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32*, i32** @stdin, align 8
  store i32* %12, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %13 = load i32*, i32** @stdout, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %10, align 8
  store i32 1, i32* %11, align 4
  br label %16

16:                                               ; preds = %138, %2
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %141

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %80

30:                                               ; preds = %20
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %67 [
    i32 105, label %39
    i32 97, label %41
    i32 104, label %64
    i32 63, label %64
  ]

39:                                               ; preds = %30
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %9, align 8
  br label %79

41:                                               ; preds = %30
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %50, i32** %7, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %41
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %41
  br label %79

64:                                               ; preds = %30, %30
  %65 = call i32 (...) @usage()
  %66 = call i32 @exit(i32 0) #3
  unreachable

67:                                               ; preds = %30
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = call i32 (...) @usage()
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %63, %39
  br label %137

80:                                               ; preds = %20
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** @stdin, align 8
  %83 = icmp eq i32* %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32* @fopen(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %90, i32** %6, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  %102 = call i32 @exit(i32 1) #3
  unreachable

103:                                              ; preds = %84
  br label %136

104:                                              ; preds = %80
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** @stdout, align 8
  %107 = icmp eq i32* %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32* @fopen(i8* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %114, i32** %8, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %108
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %124)
  %126 = call i32 @exit(i32 1) #3
  unreachable

127:                                              ; preds = %108
  br label %135

128:                                              ; preds = %104
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %133 = call i32 (...) @usage()
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %103
  br label %137

137:                                              ; preds = %136, %79
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %16

141:                                              ; preds = %16
  %142 = load i32*, i32** %6, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call i64 @pnm2png(i32* %142, i32* %143, i32* %144, i64 %145, i64 %146)
  %148 = load i64, i64* @FALSE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %141
  %151 = load i32, i32* @stderr, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %155 = call i32 @exit(i32 1) #3
  unreachable

156:                                              ; preds = %141
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @fclose(i32* %157)
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @fclose(i32* %159)
  %161 = load i64, i64* %10, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @fclose(i32* %164)
  br label %166

166:                                              ; preds = %163, %156
  ret i32 0
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i64 @pnm2png(i32*, i32*, i32*, i64, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

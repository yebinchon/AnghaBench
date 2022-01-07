; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_png2pnm.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/pngminus/extr_png2pnm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PNM2PNG\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Error:  can not create alpha-channel file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"PNG2PNM\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Error:  unknown option %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Error:  file %s does not exist\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Error:  can not create file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Error:  too many parameters\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Error:  unsuccessful conversion of PNG-image\0A\00", align 1
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
  %13 = load i32*, i32** @stdout, align 8
  store i32* %13, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %10, align 8
  store i32 1, i32* %11, align 4
  br label %16

16:                                               ; preds = %140, %2
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %143

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
  br i1 %29, label %30, label %82

30:                                               ; preds = %20
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %69 [
    i32 110, label %39
    i32 114, label %41
    i32 97, label %43
    i32 104, label %66
    i32 63, label %66
  ]

39:                                               ; preds = %30
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %9, align 8
  br label %81

41:                                               ; preds = %30
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %9, align 8
  br label %81

43:                                               ; preds = %30
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32* @fopen(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %52, i32** %8, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %43
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %43
  br label %81

66:                                               ; preds = %30, %30
  %67 = call i32 (...) @usage()
  %68 = call i32 @exit(i32 0) #3
  unreachable

69:                                               ; preds = %30
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  %79 = call i32 (...) @usage()
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %65, %41, %39
  br label %139

82:                                               ; preds = %20
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** @stdin, align 8
  %85 = icmp eq i32* %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %82
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32* @fopen(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %92, i32** %6, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %86
  br label %138

106:                                              ; preds = %82
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** @stdout, align 8
  %109 = icmp eq i32* %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32* @fopen(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %116, i32** %7, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %110
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32, i32* @stderr, align 4
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  %128 = call i32 @exit(i32 1) #3
  unreachable

129:                                              ; preds = %110
  br label %137

130:                                              ; preds = %106
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %135 = call i32 (...) @usage()
  %136 = call i32 @exit(i32 1) #3
  unreachable

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %105
  br label %139

139:                                              ; preds = %138, %81
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %16

143:                                              ; preds = %16
  %144 = load i32*, i32** %6, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %10, align 8
  %149 = call i64 @png2pnm(i32* %144, i32* %145, i32* %146, i64 %147, i64 %148)
  %150 = load i64, i64* @FALSE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %143
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i32, i32* @stderr, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %157 = call i32 @exit(i32 1) #3
  unreachable

158:                                              ; preds = %143
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @fclose(i32* %159)
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @fclose(i32* %161)
  %163 = load i64, i64* %10, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @fclose(i32* %166)
  br label %168

168:                                              ; preds = %165, %158
  ret i32 0
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i64 @png2pnm(i32*, i32*, i32*, i64, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_glossary_gnu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_glossary_gnu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i8*, i8*, i8*, i8* }

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@ARG_HASOPTVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  %-25s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"  %-25s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arg_print_glossary_gnu(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.arg_hdr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [200 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = bitcast i8** %12 to %struct.arg_hdr**
  store %struct.arg_hdr** %13, %struct.arg_hdr*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %106, %2
  %15 = load %struct.arg_hdr**, %struct.arg_hdr*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %15, i64 %17
  %19 = load %struct.arg_hdr*, %struct.arg_hdr** %18, align 8
  %20 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ARG_TERMINATOR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %109

26:                                               ; preds = %14
  %27 = load %struct.arg_hdr**, %struct.arg_hdr*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %27, i64 %29
  %31 = load %struct.arg_hdr*, %struct.arg_hdr** %30, align 8
  %32 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %105

35:                                               ; preds = %26
  %36 = bitcast [200 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 200, i1 false)
  %37 = load %struct.arg_hdr**, %struct.arg_hdr*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %37, i64 %39
  %41 = load %struct.arg_hdr*, %struct.arg_hdr** %40, align 8
  %42 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  %44 = load %struct.arg_hdr**, %struct.arg_hdr*** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %44, i64 %46
  %48 = load %struct.arg_hdr*, %struct.arg_hdr** %47, align 8
  %49 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  %51 = load %struct.arg_hdr**, %struct.arg_hdr*** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %51, i64 %53
  %55 = load %struct.arg_hdr*, %struct.arg_hdr** %54, align 8
  %56 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %10, align 8
  %58 = load %struct.arg_hdr**, %struct.arg_hdr*** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %58, i64 %60
  %62 = load %struct.arg_hdr*, %struct.arg_hdr** %61, align 8
  %63 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %35
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %72 = call i32 @memset(i8* %71, i8 signext 32, i32 4)
  %73 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %70, %67, %35
  %76 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.arg_hdr**, %struct.arg_hdr*** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %80, i64 %82
  %84 = load %struct.arg_hdr*, %struct.arg_hdr** %83, align 8
  %85 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ARG_HASOPTVALUE, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @arg_cat_optionv(i8* %76, i32 200, i8* %77, i8* %78, i8* %79, i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %90 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %91 = call i32 @strlen(i8* %90)
  %92 = icmp sgt i32 %91, 25
  br i1 %92, label %93, label %98

93:                                               ; preds = %75
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %96 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %97 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %97, align 16
  br label %98

98:                                               ; preds = %93, %75
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %101 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @arg_print_formatted(i32* %102, i32 28, i32 79, i8* %103)
  br label %105

105:                                              ; preds = %98, %26
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %14

109:                                              ; preds = %14
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @fputc(i8 signext 10, i32* %110)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @arg_cat_optionv(i8*, i32, i8*, i8*, i8*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i32 @arg_print_formatted(i32*, i32, i32, i8*) #2

declare dso_local i32 @fputc(i8 signext, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_syntaxv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_syntaxv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i8*, i8*, i8*, i32, i32 }

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@ARG_HASOPTVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [%s] [%s]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" [%s]...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arg_print_syntaxv(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.arg_hdr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [200 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = bitcast i8** %14 to %struct.arg_hdr**
  store %struct.arg_hdr** %15, %struct.arg_hdr*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %122, %3
  %17 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %17, i64 %19
  %21 = load %struct.arg_hdr*, %struct.arg_hdr** %20, align 8
  %22 = icmp ne %struct.arg_hdr* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %24, i64 %26
  %28 = load %struct.arg_hdr*, %struct.arg_hdr** %27, align 8
  %29 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ARG_TERMINATOR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %23, %16
  %36 = phi i1 [ false, %16 ], [ %34, %23 ]
  br i1 %36, label %37, label %125

37:                                               ; preds = %35
  %38 = bitcast [200 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 200, i1 false)
  %39 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %39, i64 %41
  %43 = load %struct.arg_hdr*, %struct.arg_hdr** %42, align 8
  %44 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %46, i64 %48
  %50 = load %struct.arg_hdr*, %struct.arg_hdr** %49, align 8
  %51 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %12, align 8
  %53 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %53, i64 %55
  %57 = load %struct.arg_hdr*, %struct.arg_hdr** %56, align 8
  %58 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %13, align 8
  %60 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %64, i64 %66
  %68 = load %struct.arg_hdr*, %struct.arg_hdr** %67, align 8
  %69 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ARG_HASOPTVALUE, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @arg_cat_optionv(i8* %60, i32 200, i8* %61, i8* %62, i8* %63, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %88, %37
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %76, i64 %78
  %80 = load %struct.arg_hdr*, %struct.arg_hdr** %79, align 8
  %81 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %75, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %87 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %74

91:                                               ; preds = %74
  %92 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %92, i64 %94
  %96 = load %struct.arg_hdr*, %struct.arg_hdr** %95, align 8
  %97 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %99, i64 %101
  %103 = load %struct.arg_hdr*, %struct.arg_hdr** %102, align 8
  %104 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %98, %105
  switch i32 %106, label %117 [
    i32 0, label %107
    i32 1, label %108
    i32 2, label %112
  ]

107:                                              ; preds = %91
  br label %121

108:                                              ; preds = %91
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %111 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %110)
  br label %121

112:                                              ; preds = %91
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %115 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %116 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %114, i8* %115)
  br label %121

117:                                              ; preds = %91
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %120 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %117, %112, %108, %107
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %16

125:                                              ; preds = %35
  %126 = load i8*, i8** %6, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32*, i32** %4, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %128, %125
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @arg_cat_optionv(i8*, i32, i8*, i8*, i8*, i32, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

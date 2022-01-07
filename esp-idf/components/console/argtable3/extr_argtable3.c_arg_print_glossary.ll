; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_glossary.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_glossary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"  %-20s %s\0A\00", align 1
@ARG_TERMINATOR = common dso_local global i32 0, align 4
@ARG_HASOPTVALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arg_print_glossary(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.arg_hdr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [200 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = bitcast i8** %14 to %struct.arg_hdr**
  store %struct.arg_hdr** %15, %struct.arg_hdr*** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i8* [ %19, %18 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %20 ]
  store i8* %22, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %94, %21
  %24 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %24, i64 %26
  %28 = load %struct.arg_hdr*, %struct.arg_hdr** %27, align 8
  %29 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ARG_TERMINATOR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %97

35:                                               ; preds = %23
  %36 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %36, i64 %38
  %40 = load %struct.arg_hdr*, %struct.arg_hdr** %39, align 8
  %41 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %93

44:                                               ; preds = %35
  %45 = bitcast [200 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 200, i1 false)
  %46 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %46, i64 %48
  %50 = load %struct.arg_hdr*, %struct.arg_hdr** %49, align 8
  %51 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %10, align 8
  %53 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %53, i64 %55
  %57 = load %struct.arg_hdr*, %struct.arg_hdr** %56, align 8
  %58 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %11, align 8
  %60 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %60, i64 %62
  %64 = load %struct.arg_hdr*, %struct.arg_hdr** %63, align 8
  %65 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %12, align 8
  %67 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %67, i64 %69
  %71 = load %struct.arg_hdr*, %struct.arg_hdr** %70, align 8
  %72 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %13, align 8
  %74 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %78, i64 %80
  %82 = load %struct.arg_hdr*, %struct.arg_hdr** %81, align 8
  %83 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ARG_HASOPTVALUE, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @arg_cat_optionv(i8* %74, i32 200, i8* %75, i8* %76, i8* %77, i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32*, i32** %4, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @fprintf(i32* %88, i8* %89, i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %44, %35
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %23

97:                                               ; preds = %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @arg_cat_optionv(i8*, i32, i8*, i8*, i8*, i32, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

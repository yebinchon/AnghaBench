; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_parse.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32 }
%struct.arg_end = type { i32 }

@ARG_EMALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arg_parse(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.arg_hdr**, align 8
  %9 = alloca %struct.arg_end*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = bitcast i8** %13 to %struct.arg_hdr**
  store %struct.arg_hdr** %14, %struct.arg_hdr*** %8, align 8
  store i8** null, i8*** %11, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = call i32 @arg_reset(i8** %15)
  %17 = load %struct.arg_hdr**, %struct.arg_hdr*** %8, align 8
  %18 = call i32 @arg_endindex(%struct.arg_hdr** %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.arg_hdr**, %struct.arg_hdr*** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %19, i64 %21
  %23 = load %struct.arg_hdr*, %struct.arg_hdr** %22, align 8
  %24 = bitcast %struct.arg_hdr* %23 to %struct.arg_end*
  store %struct.arg_end* %24, %struct.arg_end** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.arg_hdr**, %struct.arg_hdr*** %8, align 8
  %29 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %30 = call i32 @arg_parse_check(%struct.arg_hdr** %28, %struct.arg_end* %29)
  %31 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %32 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %97

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to i8**
  store i8** %41, i8*** %11, align 8
  %42 = load i8**, i8*** %11, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %88

44:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i8**, i8*** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %54, i8** %58, align 8
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %45

62:                                               ; preds = %45
  %63 = load i8**, i8*** %11, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* null, i8** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i8**, i8*** %11, align 8
  %69 = load %struct.arg_hdr**, %struct.arg_hdr*** %8, align 8
  %70 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %71 = call i32 @arg_parse_tagged(i32 %67, i8** %68, %struct.arg_hdr** %69, %struct.arg_end* %70)
  %72 = load i32, i32* %5, align 4
  %73 = load i8**, i8*** %11, align 8
  %74 = load %struct.arg_hdr**, %struct.arg_hdr*** %8, align 8
  %75 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %76 = call i32 @arg_parse_untagged(i32 %72, i8** %73, %struct.arg_hdr** %74, %struct.arg_end* %75)
  %77 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %78 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %62
  %82 = load %struct.arg_hdr**, %struct.arg_hdr*** %8, align 8
  %83 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %84 = call i32 @arg_parse_check(%struct.arg_hdr** %82, %struct.arg_end* %83)
  br label %85

85:                                               ; preds = %81, %62
  %86 = load i8**, i8*** %11, align 8
  %87 = call i32 @free(i8** %86)
  br label %93

88:                                               ; preds = %34
  %89 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %90 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %91 = load i32, i32* @ARG_EMALLOC, align 4
  %92 = call i32 @arg_register_error(%struct.arg_end* %89, %struct.arg_end* %90, i32 %91, i32* null)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.arg_end*, %struct.arg_end** %9, align 8
  %95 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %27
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @arg_reset(i8**) #1

declare dso_local i32 @arg_endindex(%struct.arg_hdr**) #1

declare dso_local i32 @arg_parse_check(%struct.arg_hdr**, %struct.arg_end*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @arg_parse_tagged(i32, i8**, %struct.arg_hdr**, %struct.arg_end*) #1

declare dso_local i32 @arg_parse_untagged(i32, i8**, %struct.arg_hdr**, %struct.arg_end*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @arg_register_error(%struct.arg_end*, %struct.arg_end*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

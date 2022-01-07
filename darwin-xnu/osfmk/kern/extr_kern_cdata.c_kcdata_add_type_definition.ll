; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_add_type_definition.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_add_type_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcdata_subtype_descriptor = type { i32 }
%struct.kcdata_type_definition = type { i32, i32, i32* }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@KCDATA_DESC_MAXLEN = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KCDATA_TYPE_TYPEDEFINTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcdata_add_type_definition(i32 %0, i32 %1, i8* %2, %struct.kcdata_subtype_descriptor* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kcdata_subtype_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kcdata_type_definition, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.kcdata_subtype_descriptor* %3, %struct.kcdata_subtype_descriptor** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %16, i32* %12, align 4
  store i32 16, i32* %15, align 4
  %17 = call i32 @bzero(%struct.kcdata_type_definition* %13, i32 16)
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = load i64, i64* @KCDATA_DESC_MAXLEN, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %23, i32* %6, align 4
  br label %81

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.kcdata_type_definition, %struct.kcdata_type_definition* %13, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* @KCDATA_DESC_MAXLEN, align 8
  %30 = call i32 @strlcpy(i32* %27, i8* %28, i64 %29)
  %31 = load i32, i32* %11, align 4
  %32 = getelementptr inbounds %struct.kcdata_type_definition, %struct.kcdata_type_definition* %13, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.kcdata_type_definition, %struct.kcdata_type_definition* %13, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @KERN_SUCCESS, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @KCDATA_TYPE_TYPEDEFINTION, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @kcdata_calc_padding(i32 %46)
  %48 = call i32 @kcdata_get_memory_addr_with_flavor(i32 %43, i32 %44, i32 %45, i32 %47, i32* %14)
  store i32 %48, i32* %12, align 4
  %49 = icmp ne i32 %42, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %24
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %81

52:                                               ; preds = %24
  %53 = load i32, i32* @KERN_SUCCESS, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %14, align 4
  %56 = bitcast %struct.kcdata_type_definition* %13 to i8*
  %57 = call i32 @kcdata_memcpy(i32 %54, i32 %55, i8* %56, i32 16)
  store i32 %57, i32* %12, align 4
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %81

61:                                               ; preds = %52
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 16
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* @KERN_SUCCESS, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.kcdata_subtype_descriptor*, %struct.kcdata_subtype_descriptor** %10, align 8
  %70 = bitcast %struct.kcdata_subtype_descriptor* %69 to i8*
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @kcdata_memcpy(i32 %67, i32 %68, i8* %70, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = icmp ne i32 %66, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %6, align 4
  br label %81

79:                                               ; preds = %61
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %77, %59, %50, %22
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @bzero(%struct.kcdata_type_definition*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i32*, i8*, i64) #1

declare dso_local i32 @kcdata_get_memory_addr_with_flavor(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kcdata_calc_padding(i32) #1

declare dso_local i32 @kcdata_memcpy(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

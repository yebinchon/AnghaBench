; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_add_uint32_with_description.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_add_uint32_with_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct._uint32_with_description_data = type { i32, i32* }

@KCDATA_DESC_MAXLEN = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KCDATA_TYPE_UINT32_DESC = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KCFLAG_USE_COPYOUT = common dso_local global i32 0, align 4
@KERN_NO_ACCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcdata_add_uint32_with_description(%struct.TYPE_4__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._uint32_with_description_data, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* @KCDATA_DESC_MAXLEN, align 8
  %15 = icmp slt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = load i64, i64* @KCDATA_DESC_MAXLEN, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %23, i64* %4, align 8
  br label %61

24:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  store i32 16, i32* %11, align 4
  %25 = call i32 @bzero(%struct._uint32_with_description_data* %10, i32 16)
  %26 = getelementptr inbounds %struct._uint32_with_description_data, %struct._uint32_with_description_data* %10, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlcpy(i32* %28, i8* %29, i32 8)
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct._uint32_with_description_data, %struct._uint32_with_description_data* %10, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = load i32, i32* @KCDATA_TYPE_UINT32_DESC, align 4
  %35 = call i64 @kcdata_get_memory_addr(%struct.TYPE_4__* %33, i32 %34, i32 16, i64* %9)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @KERN_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %61

41:                                               ; preds = %24
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @KCFLAG_USE_COPYOUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @copyout(%struct._uint32_with_description_data* %10, i64 %49, i32 16)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* @KERN_NO_ACCESS, align 8
  store i64 %53, i64* %4, align 8
  br label %61

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %41
  %56 = load i64, i64* %9, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @memcpy(i8* %57, %struct._uint32_with_description_data* %10, i32 16)
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %52, %39, %22
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bzero(%struct._uint32_with_description_data*, i32) #1

declare dso_local i32 @strlcpy(i32*, i8*, i32) #1

declare dso_local i64 @kcdata_get_memory_addr(%struct.TYPE_4__*, i32, i32, i64*) #1

declare dso_local i64 @copyout(%struct._uint32_with_description_data*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, %struct._uint32_with_description_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

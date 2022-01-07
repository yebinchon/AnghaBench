; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_add_uint64_with_description.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_add_uint64_with_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct._uint64_with_description_data = type { i32, i32* }

@KCDATA_DESC_MAXLEN = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KCDATA_TYPE_UINT64_DESC = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KCFLAG_USE_COPYOUT = common dso_local global i32 0, align 4
@KERN_NO_ACCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcdata_add_uint64_with_description(%struct.TYPE_4__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._uint64_with_description_data, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* @KCDATA_DESC_MAXLEN, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %17, i64* %4, align 8
  br label %55

18:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  store i32 16, i32* %11, align 4
  %19 = call i32 @bzero(%struct._uint64_with_description_data* %10, i32 16)
  %20 = getelementptr inbounds %struct._uint64_with_description_data, %struct._uint64_with_description_data* %10, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlcpy(i32* %22, i8* %23, i32 8)
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct._uint64_with_description_data, %struct._uint64_with_description_data* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = load i32, i32* @KCDATA_TYPE_UINT64_DESC, align 4
  %29 = call i64 @kcdata_get_memory_addr(%struct.TYPE_4__* %27, i32 %28, i32 16, i64* %9)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @KERN_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %55

35:                                               ; preds = %18
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KCFLAG_USE_COPYOUT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @copyout(%struct._uint64_with_description_data* %10, i64 %43, i32 16)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @KERN_NO_ACCESS, align 8
  store i64 %47, i64* %4, align 8
  br label %55

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %35
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @memcpy(i8* %51, %struct._uint64_with_description_data* %10, i32 16)
  br label %53

53:                                               ; preds = %49, %48
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %46, %33, %16
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bzero(%struct._uint64_with_description_data*, i32) #1

declare dso_local i32 @strlcpy(i32*, i8*, i32) #1

declare dso_local i64 @kcdata_get_memory_addr(%struct.TYPE_4__*, i32, i32, i64*) #1

declare dso_local i64 @copyout(%struct._uint64_with_description_data*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, %struct._uint64_with_description_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

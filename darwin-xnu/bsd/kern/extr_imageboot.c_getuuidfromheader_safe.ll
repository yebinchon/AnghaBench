; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_getuuidfromheader_safe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_getuuidfromheader_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid_command = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"libkern image too small\00", align 1
@MH_MAGIC_64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid MachO header\00", align 1
@LC_UUID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64*)* @getuuidfromheader_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getuuidfromheader_safe(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.uuid_command*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.uuid_command* null, %struct.uuid_command** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 40
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @AUTHPRNT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %72

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MH_MAGIC_64, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %28, 24
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %18
  %32 = call i32 @AUTHPRNT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %72

33:                                               ; preds = %24
  store i64 24, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = bitcast i8* %43 to %struct.uuid_command*
  store %struct.uuid_command* %44, %struct.uuid_command** %8, align 8
  %45 = load %struct.uuid_command*, %struct.uuid_command** %8, align 8
  %46 = getelementptr inbounds %struct.uuid_command, %struct.uuid_command* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LC_UUID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i64*, i64** %7, align 8
  store i64 4, i64* %51, align 8
  %52 = load %struct.uuid_command*, %struct.uuid_command** %8, align 8
  %53 = getelementptr inbounds %struct.uuid_command, %struct.uuid_command* %52, i32 0, i32 2
  store i32* %53, i32** %4, align 8
  br label %72

54:                                               ; preds = %40
  %55 = load %struct.uuid_command*, %struct.uuid_command** %8, align 8
  %56 = getelementptr inbounds %struct.uuid_command, %struct.uuid_command* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @os_add_overflow(i32 %57, i64 %58, i64* %10)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %6, align 8
  %64 = sub i64 %63, 16
  %65 = icmp ugt i64 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %54
  store i32* null, i32** %4, align 8
  br label %72

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %34

71:                                               ; preds = %34
  store i32* null, i32** %4, align 8
  br label %72

72:                                               ; preds = %71, %66, %50, %31, %16
  %73 = load i32*, i32** %4, align 8
  ret i32* %73
}

declare dso_local i32 @AUTHPRNT(i8*) #1

declare dso_local i64 @os_add_overflow(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

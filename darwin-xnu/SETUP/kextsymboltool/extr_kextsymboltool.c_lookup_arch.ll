; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/kextsymboltool/extr_kextsymboltool.c_lookup_arch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/kextsymboltool/extr_kextsymboltool.c_lookup_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32*, i32 }

@lookup_arch.archlist = internal constant [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 16777223, i32 3, i32 128, i32* null, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 16777223, i32 8, i32 128, i32* null, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 12, i32 9, i32 128, i32* null, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 12, i32 11, i32 128, i32* null, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 12, i32 12, i32 128, i32* null, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 16777228, i32 0, i32 128, i32* null, i32 0 }], align 16
@.str = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"x86_64h\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"armv7\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"armv7s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"armv7k\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"arm64\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i8*)* @lookup_arch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @lookup_arch(i8* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 6
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* @lookup_arch.archlist, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @strcmp(i8* %9, i32 %13)
  %15 = icmp eq i64 0, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* @lookup_arch.archlist, i64 0, i64 %17
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %2, align 8
  br label %24

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %5

23:                                               ; preds = %5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %25
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

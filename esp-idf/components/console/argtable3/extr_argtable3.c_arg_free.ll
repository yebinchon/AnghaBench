; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32 }

@ARG_TERMINATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arg_free(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.arg_hdr**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %6 = load i8**, i8*** %2, align 8
  %7 = bitcast i8** %6 to %struct.arg_hdr**
  store %struct.arg_hdr** %7, %struct.arg_hdr*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load %struct.arg_hdr**, %struct.arg_hdr*** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %9, i64 %11
  %13 = load %struct.arg_hdr*, %struct.arg_hdr** %12, align 8
  %14 = icmp eq %struct.arg_hdr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %41

16:                                               ; preds = %8
  %17 = load %struct.arg_hdr**, %struct.arg_hdr*** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %17, i64 %19
  %21 = load %struct.arg_hdr*, %struct.arg_hdr** %20, align 8
  %22 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.arg_hdr**, %struct.arg_hdr*** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %24, i64 %26
  %28 = load %struct.arg_hdr*, %struct.arg_hdr** %27, align 8
  %29 = call i32 @free(%struct.arg_hdr* %28)
  %30 = load %struct.arg_hdr**, %struct.arg_hdr*** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %30, i64 %33
  store %struct.arg_hdr* null, %struct.arg_hdr** %34, align 8
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ARG_TERMINATOR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %8, label %41

41:                                               ; preds = %35, %15
  ret void
}

declare dso_local i32 @free(%struct.arg_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

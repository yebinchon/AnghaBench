; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attrlist_pack_fixed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attrlist_pack_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._attrlist_buf = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._attrlist_buf*, i8*, i64)* @attrlist_pack_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attrlist_pack_fixed(%struct._attrlist_buf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct._attrlist_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct._attrlist_buf* %0, %struct._attrlist_buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct._attrlist_buf*, %struct._attrlist_buf** %4, align 8
  %10 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct._attrlist_buf*, %struct._attrlist_buf** %4, align 8
  %13 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct._attrlist_buf*, %struct._attrlist_buf** %4, align 8
  %16 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = sub nsw i64 %11, %18
  %20 = call i64 @lmin(i64 %8, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct._attrlist_buf*, %struct._attrlist_buf** %4, align 8
  %26 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @bcopy(i8* %24, i64 %27, i64 %28)
  br label %30

30:                                               ; preds = %23, %3
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @roundup(i64 %31, i32 4)
  %33 = load %struct._attrlist_buf*, %struct._attrlist_buf** %4, align 8
  %34 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  ret void
}

declare dso_local i64 @lmin(i64, i64) #1

declare dso_local i32 @bcopy(i8*, i64, i64) #1

declare dso_local i64 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

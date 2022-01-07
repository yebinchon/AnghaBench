; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_cat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, %struct.pbuf* }

@.str = private unnamed_addr constant [36 x i8] c"h != NULL (programmer violates API)\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"t != NULL (programmer violates API)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"p->tot_len == p->len (of last pbuf in chain)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"p->next == NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_cat(%struct.pbuf* %0, %struct.pbuf* %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store %struct.pbuf* %1, %struct.pbuf** %4, align 8
  %6 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %7 = icmp ne %struct.pbuf* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %11 = icmp ne %struct.pbuf* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %15 = icmp eq %struct.pbuf* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %18 = icmp eq %struct.pbuf* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %65

20:                                               ; preds = %16
  %21 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %21, %struct.pbuf** %5, align 8
  br label %22

22:                                               ; preds = %35, %20
  %23 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i32 0, i32 2
  %25 = load %struct.pbuf*, %struct.pbuf** %24, align 8
  %26 = icmp ne %struct.pbuf* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %32 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 2
  %38 = load %struct.pbuf*, %struct.pbuf** %37, align 8
  store %struct.pbuf* %38, %struct.pbuf** %5, align 8
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %44 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %49, i32 0, i32 2
  %51 = load %struct.pbuf*, %struct.pbuf** %50, align 8
  %52 = icmp eq %struct.pbuf* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %63 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %64 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %63, i32 0, i32 2
  store %struct.pbuf* %62, %struct.pbuf** %64, align 8
  br label %65

65:                                               ; preds = %39, %19
  ret void
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

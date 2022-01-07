; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_tag_unref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_tag_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_tags = type { i32 }
%struct.pf_tagname = type { i64, i64 }

@entries = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_tags*, i64)* @tag_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tag_unref(%struct.pf_tags* %0, i64 %1) #0 {
  %3 = alloca %struct.pf_tags*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pf_tagname*, align 8
  %6 = alloca %struct.pf_tagname*, align 8
  store %struct.pf_tags* %0, %struct.pf_tags** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %43

10:                                               ; preds = %2
  %11 = load %struct.pf_tags*, %struct.pf_tags** %3, align 8
  %12 = call %struct.pf_tagname* @TAILQ_FIRST(%struct.pf_tags* %11)
  store %struct.pf_tagname* %12, %struct.pf_tagname** %5, align 8
  br label %13

13:                                               ; preds = %41, %10
  %14 = load %struct.pf_tagname*, %struct.pf_tagname** %5, align 8
  %15 = icmp ne %struct.pf_tagname* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.pf_tagname*, %struct.pf_tagname** %5, align 8
  %18 = load i32, i32* @entries, align 4
  %19 = call %struct.pf_tagname* @TAILQ_NEXT(%struct.pf_tagname* %17, i32 %18)
  store %struct.pf_tagname* %19, %struct.pf_tagname** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.pf_tagname*, %struct.pf_tagname** %5, align 8
  %22 = getelementptr inbounds %struct.pf_tagname, %struct.pf_tagname* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  %26 = load %struct.pf_tagname*, %struct.pf_tagname** %5, align 8
  %27 = getelementptr inbounds %struct.pf_tagname, %struct.pf_tagname* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.pf_tags*, %struct.pf_tags** %3, align 8
  %33 = load %struct.pf_tagname*, %struct.pf_tagname** %5, align 8
  %34 = load i32, i32* @entries, align 4
  %35 = call i32 @TAILQ_REMOVE(%struct.pf_tags* %32, %struct.pf_tagname* %33, i32 %34)
  %36 = load %struct.pf_tagname*, %struct.pf_tagname** %5, align 8
  %37 = load i32, i32* @M_TEMP, align 4
  %38 = call i32 @_FREE(%struct.pf_tagname* %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %25
  br label %43

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.pf_tagname*, %struct.pf_tagname** %6, align 8
  store %struct.pf_tagname* %42, %struct.pf_tagname** %5, align 8
  br label %13

43:                                               ; preds = %9, %39, %13
  ret void
}

declare dso_local %struct.pf_tagname* @TAILQ_FIRST(%struct.pf_tags*) #1

declare dso_local %struct.pf_tagname* @TAILQ_NEXT(%struct.pf_tagname*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.pf_tags*, %struct.pf_tagname*, i32) #1

declare dso_local i32 @_FREE(%struct.pf_tagname*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

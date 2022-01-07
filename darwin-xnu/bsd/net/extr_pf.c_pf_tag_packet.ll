; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_tag_packet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_tag_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, i32* }
%struct.pf_mtag = type { i32, i32 }
%struct.pf_pdesc = type { i32, i32, i32, i32 }

@PKTF_FLOW_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_tag_packet(%struct.TYPE_4__* %0, %struct.pf_mtag* %1, i32 %2, i32 %3, %struct.pf_pdesc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.pf_mtag*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pf_pdesc*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.pf_mtag* %1, %struct.pf_mtag** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.pf_pdesc* %4, %struct.pf_pdesc** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @PF_RTABLEID_IS_VALID(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %20 = icmp eq %struct.pf_pdesc* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %23 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PKTF_FLOW_ID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21, %18
  store i32 0, i32* %6, align 4
  br label %90

29:                                               ; preds = %21, %14, %5
  %30 = load %struct.pf_mtag*, %struct.pf_mtag** %8, align 8
  %31 = icmp eq %struct.pf_mtag* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = call %struct.pf_mtag* @pf_get_mtag_pbuf(%struct.TYPE_4__* %33)
  store %struct.pf_mtag* %34, %struct.pf_mtag** %8, align 8
  %35 = icmp eq %struct.pf_mtag* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %90

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.pf_mtag*, %struct.pf_mtag** %8, align 8
  %43 = getelementptr inbounds %struct.pf_mtag, %struct.pf_mtag* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @PF_RTABLEID_IS_VALID(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.pf_mtag*, %struct.pf_mtag** %8, align 8
  %51 = getelementptr inbounds %struct.pf_mtag, %struct.pf_mtag* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %54 = icmp ne %struct.pf_pdesc* %53, null
  br i1 %54, label %55, label %89

55:                                               ; preds = %52
  %56 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %57 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PKTF_FLOW_ID, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %55
  %63 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %64 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  store i32 %65, i32* %68, align 4
  %69 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %70 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  store i32 %71, i32* %74, align 4
  %75 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %76 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.pf_pdesc*, %struct.pf_pdesc** %11, align 8
  %84 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %62, %55, %52
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %36, %28
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @PF_RTABLEID_IS_VALID(i32) #1

declare dso_local %struct.pf_mtag* @pf_get_mtag_pbuf(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd_addr = type { i32 }
%struct.pbuf = type { i64, %struct.pbuf* }

@L2CAP_ACL_START = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@L2CAP_ACL_CONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"l2cap_write: FRAG\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"l2cap_write: DONE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2cap_write(%struct.bd_addr* %0, %struct.pbuf* %1, i64 %2) #0 {
  %4 = alloca %struct.bd_addr*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pbuf*, align 8
  %12 = alloca i64, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %4, align 8
  store %struct.pbuf* %1, %struct.pbuf** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @L2CAP_ACL_START, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* @ERR_OK, align 8
  store i64 %14, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %15 = call i64 (...) @lp_pdu_maxsize()
  store i64 %15, i64* %8, align 8
  %16 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  store %struct.pbuf* %16, %struct.pbuf** %11, align 8
  br label %17

17:                                               ; preds = %75, %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @ERR_OK, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %76

26:                                               ; preds = %24
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %32 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @lp_acl_write(%struct.bd_addr* %31, %struct.pbuf* %32, i64 %33, i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %46, %30
  %41 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %9, align 8
  %52 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %53 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i32 0, i32 1
  %54 = load %struct.pbuf*, %struct.pbuf** %53, align 8
  store %struct.pbuf* %54, %struct.pbuf** %11, align 8
  br label %40

55:                                               ; preds = %40
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub nsw i64 0, %60
  %62 = call i32 @btpbuf_header(%struct.pbuf* %59, i64 %61)
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %58, %55
  %67 = load i32, i32* @L2CAP_ACL_CONT, align 4
  store i32 %67, i32* %7, align 4
  %68 = call i32 @LOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %75

69:                                               ; preds = %26
  %70 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %71 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @lp_acl_write(%struct.bd_addr* %70, %struct.pbuf* %71, i64 %72, i32 %73)
  store i64 %74, i64* %10, align 8
  store i64 0, i64* %6, align 8
  br label %75

75:                                               ; preds = %69, %66
  br label %17

76:                                               ; preds = %24
  %77 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @btpbuf_header(%struct.pbuf* %77, i64 %78)
  %80 = call i32 @LOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i64, i64* %10, align 8
  ret i64 %81
}

declare dso_local i64 @lp_pdu_maxsize(...) #1

declare dso_local i64 @lp_acl_write(%struct.bd_addr*, %struct.pbuf*, i64, i32) #1

declare dso_local i32 @btpbuf_header(%struct.pbuf*, i64) #1

declare dso_local i32 @LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

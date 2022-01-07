; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_dhcp_options.c_dhcpol_parse_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_dhcp_options.c_dhcpol_parse_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DHCP_TAG_OFFSET = common dso_local global i32 0, align 4
@DHCP_LEN_OFFSET = common dso_local global i32 0, align 4
@DHCP_OPTION_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dhcp_options: parse failed near tag %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcpol_parse_buffer(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @dhcpol_init(i32* %12)
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %8, align 4
  store i32 128, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  br label %17

17:                                               ; preds = %72, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 129
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DHCP_TAG_OFFSET, align 4
  %23 = icmp sgt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %73

26:                                               ; preds = %24
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @DHCP_TAG_OFFSET, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %46 [
    i32 129, label %33
    i32 128, label %41
  ]

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @dhcpol_add(i32* %34, i32* %35)
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  br label %72

41:                                               ; preds = %26
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  br label %72

46:                                               ; preds = %26
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @DHCP_LEN_OFFSET, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @DHCP_LEN_OFFSET, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @dhcpol_add(i32* %56, i32* %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @DHCP_OPTION_OFFSET, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @DHCP_OPTION_OFFSET, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32*, i32** %9, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %9, align 8
  br label %71

70:                                               ; preds = %46
  store i32 -1, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %41, %33
  br label %17

73:                                               ; preds = %24
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @dprintf(i8* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @dhcpol_free(i32* %81)
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %76
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @dhcpol_init(i32*) #1

declare dso_local i32 @dhcpol_add(i32*, i32*) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @dhcpol_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_option.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_opt_hdr = type { i32 }
%union.nd_opts = type { %struct.nd_opt_hdr* }

@.str = private unnamed_addr constant [30 x i8] c"ndopts == NULL in nd6_option\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"uninitialized ndopts in nd6_option\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nd_opt_hdr* @nd6_option(%union.nd_opts* %0) #0 {
  %2 = alloca %struct.nd_opt_hdr*, align 8
  %3 = alloca %union.nd_opts*, align 8
  %4 = alloca %struct.nd_opt_hdr*, align 8
  %5 = alloca i32, align 4
  store %union.nd_opts* %0, %union.nd_opts** %3, align 8
  %6 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %7 = icmp ne %union.nd_opts* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %12 = bitcast %union.nd_opts* %11 to %struct.nd_opt_hdr**
  %13 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %12, align 8
  %14 = icmp ne %struct.nd_opt_hdr* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %19 = bitcast %union.nd_opts* %18 to %struct.nd_opt_hdr**
  %20 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %19, align 8
  %21 = icmp ne %struct.nd_opt_hdr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %2, align 8
  br label %89

23:                                               ; preds = %17
  %24 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %25 = bitcast %union.nd_opts* %24 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %2, align 8
  br label %89

29:                                               ; preds = %23
  %30 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %31 = bitcast %union.nd_opts* %30 to %struct.nd_opt_hdr**
  %32 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %31, align 8
  store %struct.nd_opt_hdr* %32, %struct.nd_opt_hdr** %4, align 8
  %33 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %34 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %33, i32 0, i32 0
  %35 = ptrtoint i32* %34 to i64
  %36 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %37 = bitcast %union.nd_opts* %36 to %struct.nd_opt_hdr**
  %38 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %37, align 8
  %39 = ptrtoint %struct.nd_opt_hdr* %38 to i64
  %40 = icmp sge i64 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %43 = call i32 @bzero(%union.nd_opts* %42, i32 8)
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %2, align 8
  br label %89

44:                                               ; preds = %29
  %45 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %46 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 3
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %53 = call i32 @bzero(%union.nd_opts* %52, i32 8)
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %2, align 8
  br label %89

54:                                               ; preds = %44
  %55 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %56 = ptrtoint %struct.nd_opt_hdr* %55 to i64
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = inttoptr i64 %59 to %struct.nd_opt_hdr*
  %61 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %62 = bitcast %union.nd_opts* %61 to %struct.nd_opt_hdr**
  store %struct.nd_opt_hdr* %60, %struct.nd_opt_hdr** %62, align 8
  %63 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %64 = bitcast %union.nd_opts* %63 to %struct.nd_opt_hdr**
  %65 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %64, align 8
  %66 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %67 = bitcast %union.nd_opts* %66 to %struct.nd_opt_hdr**
  %68 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %67, align 8
  %69 = icmp ugt %struct.nd_opt_hdr* %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %72 = call i32 @bzero(%union.nd_opts* %71, i32 8)
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %2, align 8
  br label %89

73:                                               ; preds = %54
  %74 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %75 = bitcast %union.nd_opts* %74 to %struct.nd_opt_hdr**
  %76 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %75, align 8
  %77 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %78 = bitcast %union.nd_opts* %77 to %struct.nd_opt_hdr**
  %79 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %78, align 8
  %80 = icmp eq %struct.nd_opt_hdr* %76, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %83 = bitcast %union.nd_opts* %82 to i32*
  store i32 1, i32* %83, align 8
  %84 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %85 = bitcast %union.nd_opts* %84 to %struct.nd_opt_hdr**
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %85, align 8
  br label %86

86:                                               ; preds = %81, %73
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  store %struct.nd_opt_hdr* %88, %struct.nd_opt_hdr** %2, align 8
  br label %89

89:                                               ; preds = %87, %70, %51, %41, %28, %22
  %90 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %2, align 8
  ret %struct.nd_opt_hdr* %90
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bzero(%union.nd_opts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

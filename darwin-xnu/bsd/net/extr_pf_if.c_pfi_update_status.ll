; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_update_status.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_status = type { i64***, i64*** }
%struct.pfi_kif = type { i32, i64***, i64*** }
%struct.pfi_kif_cmp = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pfi_ifhead = common dso_local global i32 0, align 4
@pfi_ifs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfi_update_status(i8* %0, %struct.pf_status* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pf_status*, align 8
  %5 = alloca %struct.pfi_kif*, align 8
  %6 = alloca %struct.pfi_kif_cmp, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.pf_status* %1, %struct.pf_status** %4, align 8
  %10 = load i32, i32* @pf_lock, align 4
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.pfi_kif_cmp, %struct.pfi_kif_cmp* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlcpy(i32 %14, i8* %15, i32 4)
  %17 = load i32, i32* @pfi_ifhead, align 4
  %18 = bitcast %struct.pfi_kif_cmp* %6 to i8*
  %19 = bitcast i8* %18 to %struct.pfi_kif*
  %20 = call %struct.pfi_kif* @RB_FIND(i32 %17, i32* @pfi_ifs, %struct.pfi_kif* %19)
  store %struct.pfi_kif* %20, %struct.pfi_kif** %5, align 8
  %21 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %22 = icmp eq %struct.pfi_kif* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %130

24:                                               ; preds = %2
  %25 = load %struct.pf_status*, %struct.pf_status** %4, align 8
  %26 = icmp ne %struct.pf_status* %25, null
  br i1 %26, label %27, label %118

27:                                               ; preds = %24
  %28 = load %struct.pf_status*, %struct.pf_status** %4, align 8
  %29 = getelementptr inbounds %struct.pf_status, %struct.pf_status* %28, i32 0, i32 1
  %30 = load i64***, i64**** %29, align 8
  %31 = call i32 @bzero(i64*** %30, i32 8)
  %32 = load %struct.pf_status*, %struct.pf_status** %4, align 8
  %33 = getelementptr inbounds %struct.pf_status, %struct.pf_status* %32, i32 0, i32 0
  %34 = load i64***, i64**** %33, align 8
  %35 = call i32 @bzero(i64*** %34, i32 8)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %114, %27
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %117

39:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %110, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %113

43:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %106, %43
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %109

47:                                               ; preds = %44
  %48 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %49 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %48, i32 0, i32 2
  %50 = load i64***, i64**** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64**, i64*** %50, i64 %52
  %54 = load i64**, i64*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64*, i64** %54, i64 %56
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pf_status*, %struct.pf_status** %4, align 8
  %64 = getelementptr inbounds %struct.pf_status, %struct.pf_status* %63, i32 0, i32 1
  %65 = load i64***, i64**** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64**, i64*** %65, i64 %67
  %69 = load i64**, i64*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %62
  store i64 %78, i64* %76, align 8
  %79 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %80 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %79, i32 0, i32 1
  %81 = load i64***, i64**** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64**, i64*** %81, i64 %83
  %85 = load i64**, i64*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64*, i64** %85, i64 %87
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.pf_status*, %struct.pf_status** %4, align 8
  %95 = getelementptr inbounds %struct.pf_status, %struct.pf_status* %94, i32 0, i32 0
  %96 = load i64***, i64**** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64**, i64*** %96, i64 %98
  %100 = load i64**, i64*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %100, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 %93
  store i64* %105, i64** %103, align 8
  br label %106

106:                                              ; preds = %47
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %44

109:                                              ; preds = %44
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %40

113:                                              ; preds = %40
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %36

117:                                              ; preds = %36
  br label %130

118:                                              ; preds = %24
  %119 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %120 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %119, i32 0, i32 2
  %121 = load i64***, i64**** %120, align 8
  %122 = call i32 @bzero(i64*** %121, i32 8)
  %123 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %124 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %123, i32 0, i32 1
  %125 = load i64***, i64**** %124, align 8
  %126 = call i32 @bzero(i64*** %125, i32 8)
  %127 = call i32 (...) @pf_calendar_time_second()
  %128 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %129 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %23, %118, %117
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.pfi_kif* @RB_FIND(i32, i32*, %struct.pfi_kif*) #1

declare dso_local i32 @bzero(i64***, i32) #1

declare dso_local i32 @pf_calendar_time_second(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

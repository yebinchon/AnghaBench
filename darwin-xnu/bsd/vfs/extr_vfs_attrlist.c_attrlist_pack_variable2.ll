; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attrlist_pack_variable2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attrlist_pack_variable2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._attrlist_buf = type { i8*, i32, i8*, i32 }
%struct.attrreference = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._attrlist_buf*, i8*, i64, i8*, i64)* @attrlist_pack_variable2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attrlist_pack_variable2(%struct._attrlist_buf* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct._attrlist_buf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.attrreference, align 8
  %12 = alloca i64, align 8
  store %struct._attrlist_buf* %0, %struct._attrlist_buf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %14 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %17 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  %22 = getelementptr inbounds %struct.attrreference, %struct.attrreference* %11, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  %26 = getelementptr inbounds %struct.attrreference, %struct.attrreference* %11, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %28 = call i32 @attrlist_pack_fixed(%struct._attrlist_buf* %27, %struct.attrreference* %11, i32 16)
  %29 = load i64, i64* %8, align 8
  %30 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %31 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %34 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %37 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = ptrtoint i8* %32 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = inttoptr i64 %44 to i8*
  %46 = call i64 @lmin(i64 %29, i8* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %5
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %55 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @bcopy(i8* %53, i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %52, %49
  %60 = load i64, i64* %12, align 8
  %61 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %62 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %60
  store i8* %64, i8** %62, align 8
  br label %65

65:                                               ; preds = %59, %5
  %66 = load i64, i64* %10, align 8
  %67 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %68 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %71 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %74 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i8, i8* %72, i64 %77
  %79 = ptrtoint i8* %69 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = inttoptr i64 %81 to i8*
  %83 = call i64 @lmin(i64 %66, i8* %82)
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %65
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %92 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @bcopy(i8* %90, i8* %93, i64 %94)
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i64, i64* %12, align 8
  %98 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %99 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %97
  store i8* %101, i8** %99, align 8
  br label %102

102:                                              ; preds = %96, %65
  %103 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %104 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = call i64 @roundup(i64 %106, i32 4)
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct._attrlist_buf*, %struct._attrlist_buf** %6, align 8
  %110 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  ret void
}

declare dso_local i32 @attrlist_pack_fixed(%struct._attrlist_buf*, %struct.attrreference*, i32) #1

declare dso_local i64 @lmin(i64, i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i64 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_bzero_keys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_bzero_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_msghdr = type { i32*, i32** }
%struct.sadb_key = type { i32 }

@SADB_EXT_KEY_ENCRYPT = common dso_local global i64 0, align 8
@SADB_EXT_KEY_AUTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sadb_msghdr*)* @bzero_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bzero_keys(%struct.sadb_msghdr* %0) #0 {
  %2 = alloca %struct.sadb_msghdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sadb_key*, align 8
  %6 = alloca %struct.sadb_key*, align 8
  store %struct.sadb_msghdr* %0, %struct.sadb_msghdr** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %8 = icmp ne %struct.sadb_msghdr* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %124

10:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  %11 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %12 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %11, i32 0, i32 1
  %13 = load i32**, i32*** %12, align 8
  %14 = load i64, i64* @SADB_EXT_KEY_ENCRYPT, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %67

18:                                               ; preds = %10
  %19 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %20 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load i64, i64* @SADB_EXT_KEY_ENCRYPT, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to %struct.sadb_key*
  store %struct.sadb_key* %25, %struct.sadb_key** %5, align 8
  %26 = load %struct.sadb_key*, %struct.sadb_key** %5, align 8
  %27 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %3, align 4
  %30 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %31 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @SADB_EXT_KEY_ENCRYPT, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %18
  %41 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %42 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* @SADB_EXT_KEY_ENCRYPT, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @bzero(i32* %49, i32 %50)
  br label %66

52:                                               ; preds = %18
  %53 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %54 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* @SADB_EXT_KEY_ENCRYPT, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %60 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @SADB_EXT_KEY_ENCRYPT, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bzero(i32* %58, i32 %64)
  br label %66

66:                                               ; preds = %52, %40
  br label %67

67:                                               ; preds = %66, %10
  %68 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %69 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i64, i64* @SADB_EXT_KEY_AUTH, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %124

75:                                               ; preds = %67
  %76 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %77 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i64, i64* @SADB_EXT_KEY_AUTH, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to %struct.sadb_key*
  store %struct.sadb_key* %82, %struct.sadb_key** %6, align 8
  %83 = load %struct.sadb_key*, %struct.sadb_key** %6, align 8
  %84 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 3
  store i32 %86, i32* %3, align 4
  %87 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %88 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @SADB_EXT_KEY_AUTH, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp sge i32 %92, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %75
  %98 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %99 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* @SADB_EXT_KEY_AUTH, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @bzero(i32* %106, i32 %107)
  br label %123

109:                                              ; preds = %75
  %110 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %111 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = load i64, i64* @SADB_EXT_KEY_AUTH, align 8
  %114 = getelementptr inbounds i32*, i32** %112, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %2, align 8
  %117 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @SADB_EXT_KEY_AUTH, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @bzero(i32* %115, i32 %121)
  br label %123

123:                                              ; preds = %109, %97
  br label %124

124:                                              ; preds = %9, %123, %67
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

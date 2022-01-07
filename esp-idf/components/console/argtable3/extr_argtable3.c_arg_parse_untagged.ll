; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_parse_untagged.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_parse_untagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i32 (i8*, i8*)*, i8*, i64, i64 }
%struct.arg_end = type opaque

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@ARG_ENOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, %struct.arg_hdr**, %struct.arg_end*)* @arg_parse_untagged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_parse_untagged(i32 %0, i8** %1, %struct.arg_hdr** %2, %struct.arg_end* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.arg_hdr**, align 8
  %8 = alloca %struct.arg_end*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.arg_hdr** %2, %struct.arg_hdr*** %7, align 8
  store %struct.arg_end* %3, %struct.arg_end** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %15

15:                                               ; preds = %102, %62, %50, %4
  %16 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %16, i64 %18
  %20 = load %struct.arg_hdr*, %struct.arg_hdr** %19, align 8
  %21 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ARG_TERMINATOR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %103

27:                                               ; preds = %15
  %28 = load i32, i32* @optind, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %134

32:                                               ; preds = %27
  %33 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %33, i64 %35
  %37 = load %struct.arg_hdr*, %struct.arg_hdr** %36, align 8
  %38 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %42, i64 %44
  %46 = load %struct.arg_hdr*, %struct.arg_hdr** %45, align 8
  %47 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41, %32
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %15

53:                                               ; preds = %41
  %54 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %54, i64 %56
  %58 = load %struct.arg_hdr*, %struct.arg_hdr** %57, align 8
  %59 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %58, i32 0, i32 1
  %60 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %59, align 8
  %61 = icmp ne i32 (i8*, i8*)* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %15

65:                                               ; preds = %53
  %66 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %66, i64 %68
  %70 = load %struct.arg_hdr*, %struct.arg_hdr** %69, align 8
  %71 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  %73 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %73, i64 %75
  %77 = load %struct.arg_hdr*, %struct.arg_hdr** %76, align 8
  %78 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %77, i32 0, i32 1
  %79 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %78, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i8**, i8*** %6, align 8
  %82 = load i32, i32* @optind, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 %79(i8* %80, i8* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %65
  %90 = load i32, i32* @optind, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @optind, align 4
  store i32 0, i32* %10, align 4
  br label %102

92:                                               ; preds = %65
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %10, align 4
  %96 = load i8**, i8*** %6, align 8
  %97 = load i32, i32* @optind, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %13, align 8
  store i8* %101, i8** %12, align 8
  br label %102

102:                                              ; preds = %92, %89
  br label %15

103:                                              ; preds = %15
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.arg_end*, %struct.arg_end** %8, align 8
  %108 = bitcast %struct.arg_end* %107 to i8*
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @arg_register_error(i8* %108, i8* %109, i32 %110, i8* %111)
  %113 = load i32, i32* @optind, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @optind, align 4
  br label %115

115:                                              ; preds = %106, %103
  br label %116

116:                                              ; preds = %120, %115
  %117 = load i32, i32* @optind, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load %struct.arg_end*, %struct.arg_end** %8, align 8
  %122 = bitcast %struct.arg_end* %121 to i8*
  %123 = load %struct.arg_end*, %struct.arg_end** %8, align 8
  %124 = bitcast %struct.arg_end* %123 to i8*
  %125 = load i32, i32* @ARG_ENOMATCH, align 4
  %126 = load i8**, i8*** %6, align 8
  %127 = load i32, i32* @optind, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @optind, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8*, i8** %126, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @arg_register_error(i8* %122, i8* %124, i32 %125, i8* %131)
  br label %116

133:                                              ; preds = %116
  br label %134

134:                                              ; preds = %133, %31
  ret void
}

declare dso_local i32 @arg_register_error(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

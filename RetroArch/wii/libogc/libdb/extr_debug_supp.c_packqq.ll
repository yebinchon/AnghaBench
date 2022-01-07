; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_packqq.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_packqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbstub_threadinfo = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"00000001\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"00000002\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"00000004\00", align 1
@hexchars = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"00000008\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"00000010\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packqq(i8* %0, i32 %1, i32 %2, %struct.gdbstub_threadinfo* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gdbstub_threadinfo*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.gdbstub_threadinfo* %3, %struct.gdbstub_threadinfo** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %5, align 8
  store i8 113, i8* %10, align 1
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  store i8 81, i8* %12, align 1
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @int2fhstr(i8* %14, i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @thread2fhstr(i8* %17, i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @memcpy(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 49, i8* %28, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  store i8 48, i8* %30, align 1
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @thread2fhstr(i8* %32, i32 %33)
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %23, %4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @memcpy(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  store i8 48, i8* %44, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  store i8 49, i8* %46, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  store i8 49, i8* %48, align 1
  br label %50

50:                                               ; preds = %39, %35
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @memcpy(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  store i8* %58, i8** %5, align 8
  %59 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %60 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 7
  store i8 0, i8* %62, align 1
  %63 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %64 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i8**, i8*** @hexchars, align 8
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 15
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %67, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i8**, i8*** @hexchars, align 8
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 15
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %82 to i8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %88 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @memcpy(i8* %86, i8* %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %54, %50
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %96
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @memcpy(i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 8
  store i8* %104, i8** %5, align 8
  %105 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %106 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 7
  store i8 0, i8* %108, align 1
  %109 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %110 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strlen(i8* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i8**, i8*** @hexchars, align 8
  %114 = load i32, i32* %9, align 4
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 15
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %113, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %119 to i8
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  store i8 %120, i8* %121, align 1
  %123 = load i8**, i8*** @hexchars, align 8
  %124 = load i32, i32* %9, align 4
  %125 = and i32 %124, 15
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = ptrtoint i8* %128 to i8
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %5, align 8
  store i8 %129, i8* %130, align 1
  %132 = load i8*, i8** %5, align 8
  %133 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %134 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @memcpy(i8* %132, i8* %135, i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %5, align 8
  br label %142

142:                                              ; preds = %100, %96
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, 16
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %188

146:                                              ; preds = %142
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @memcpy(i8* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 8
  store i8* %150, i8** %5, align 8
  %151 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %152 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 7
  store i8 0, i8* %154, align 1
  %155 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %156 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @strlen(i8* %157)
  store i32 %158, i32* %9, align 4
  %159 = load i8**, i8*** @hexchars, align 8
  %160 = load i32, i32* %9, align 4
  %161 = ashr i32 %160, 4
  %162 = and i32 %161, 15
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %159, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = ptrtoint i8* %165 to i8
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %5, align 8
  store i8 %166, i8* %167, align 1
  %169 = load i8**, i8*** @hexchars, align 8
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, 15
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %169, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = ptrtoint i8* %174 to i8
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %5, align 8
  store i8 %175, i8* %176, align 1
  %178 = load i8*, i8** %5, align 8
  %179 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %8, align 8
  %180 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @memcpy(i8* %178, i8* %181, i32 %182)
  %184 = load i32, i32* %9, align 4
  %185 = load i8*, i8** %5, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %5, align 8
  br label %188

188:                                              ; preds = %146, %142
  %189 = load i8*, i8** %5, align 8
  store i8 0, i8* %189, align 1
  ret void
}

declare dso_local i8* @int2fhstr(i8*, i32) #1

declare dso_local i8* @thread2fhstr(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_end.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib = type { i32, i32, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__*, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"CHK\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TFB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OK \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"OPT\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c" %s %s %d %d \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" SKP %s %d %s \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"[no_message]\00", align 1
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zlib*)* @zlib_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zlib_end(%struct.zlib* %0) #0 {
  %2 = alloca %struct.zlib*, align 8
  %3 = alloca i8*, align 8
  store %struct.zlib* %0, %struct.zlib** %2, align 8
  %4 = load %struct.zlib*, %struct.zlib** %2, align 8
  %5 = getelementptr inbounds %struct.zlib, %struct.zlib* %4, i32 0, i32 12
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %142, label %10

10:                                               ; preds = %1
  %11 = load %struct.zlib*, %struct.zlib** %2, align 8
  %12 = getelementptr inbounds %struct.zlib, %struct.zlib* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %89

15:                                               ; preds = %10
  %16 = load %struct.zlib*, %struct.zlib** %2, align 8
  %17 = getelementptr inbounds %struct.zlib, %struct.zlib* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %42

21:                                               ; preds = %15
  %22 = load %struct.zlib*, %struct.zlib** %2, align 8
  %23 = getelementptr inbounds %struct.zlib, %struct.zlib* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.zlib*, %struct.zlib** %2, align 8
  %26 = getelementptr inbounds %struct.zlib, %struct.zlib* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %41

30:                                               ; preds = %21
  %31 = load %struct.zlib*, %struct.zlib** %2, align 8
  %32 = getelementptr inbounds %struct.zlib, %struct.zlib* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.zlib*, %struct.zlib** %2, align 8
  %35 = getelementptr inbounds %struct.zlib, %struct.zlib* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %40

39:                                               ; preds = %30
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.zlib*, %struct.zlib** %2, align 8
  %44 = getelementptr inbounds %struct.zlib, %struct.zlib* %43, i32 0, i32 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @type_name(i32 %47, i32 %48)
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.zlib*, %struct.zlib** %2, align 8
  %52 = call i8* @zlib_flevel(%struct.zlib* %51)
  %53 = load %struct.zlib*, %struct.zlib** %2, align 8
  %54 = getelementptr inbounds %struct.zlib, %struct.zlib* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.zlib*, %struct.zlib** %2, align 8
  %57 = getelementptr inbounds %struct.zlib, %struct.zlib* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %50, i8* %52, i32 %55, i32 %58)
  %60 = load %struct.zlib*, %struct.zlib** %2, align 8
  %61 = getelementptr inbounds %struct.zlib, %struct.zlib* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.zlib*, %struct.zlib** %2, align 8
  %64 = getelementptr inbounds %struct.zlib, %struct.zlib* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @uarb_print(i32 %62, i32 %65, i32 %66)
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @putc(i8 signext 32, i32 %68)
  %70 = load %struct.zlib*, %struct.zlib** %2, align 8
  %71 = getelementptr inbounds %struct.zlib, %struct.zlib* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.zlib*, %struct.zlib** %2, align 8
  %74 = getelementptr inbounds %struct.zlib, %struct.zlib* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @stdout, align 4
  %77 = call i32 @uarb_print(i32 %72, i32 %75, i32 %76)
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @putc(i8 signext 32, i32 %78)
  %80 = load %struct.zlib*, %struct.zlib** %2, align 8
  %81 = getelementptr inbounds %struct.zlib, %struct.zlib* %80, i32 0, i32 5
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @stdout, align 4
  %86 = call i32 @fputs(i32 %84, i32 %85)
  %87 = load i32, i32* @stdout, align 4
  %88 = call i32 @putc(i8 signext 10, i32 %87)
  br label %141

89:                                               ; preds = %10
  %90 = load %struct.zlib*, %struct.zlib** %2, align 8
  %91 = getelementptr inbounds %struct.zlib, %struct.zlib* %90, i32 0, i32 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @stdout, align 4
  %96 = call i32 @type_name(i32 %94, i32 %95)
  %97 = load %struct.zlib*, %struct.zlib** %2, align 8
  %98 = call i8* @zlib_flevel(%struct.zlib* %97)
  %99 = load %struct.zlib*, %struct.zlib** %2, align 8
  %100 = getelementptr inbounds %struct.zlib, %struct.zlib* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.zlib*, %struct.zlib** %2, align 8
  %103 = call i8* @zlib_rc(%struct.zlib* %102)
  %104 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %98, i32 %101, i8* %103)
  %105 = load %struct.zlib*, %struct.zlib** %2, align 8
  %106 = getelementptr inbounds %struct.zlib, %struct.zlib* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.zlib*, %struct.zlib** %2, align 8
  %109 = getelementptr inbounds %struct.zlib, %struct.zlib* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 @uarb_print(i32 %107, i32 %110, i32 %111)
  %113 = load i32, i32* @stdout, align 4
  %114 = call i32 @putc(i8 signext 32, i32 %113)
  %115 = load %struct.zlib*, %struct.zlib** %2, align 8
  %116 = getelementptr inbounds %struct.zlib, %struct.zlib* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %89
  %121 = load %struct.zlib*, %struct.zlib** %2, align 8
  %122 = getelementptr inbounds %struct.zlib, %struct.zlib* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  br label %126

125:                                              ; preds = %89
  br label %126

126:                                              ; preds = %125, %120
  %127 = phi i8* [ %124, %120 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %125 ]
  %128 = load i32, i32* @stdout, align 4
  %129 = call i32 @emit_string(i8* %127, i32 %128)
  %130 = load i32, i32* @stdout, align 4
  %131 = call i32 @putc(i8 signext 32, i32 %130)
  %132 = load %struct.zlib*, %struct.zlib** %2, align 8
  %133 = getelementptr inbounds %struct.zlib, %struct.zlib* %132, i32 0, i32 5
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @stdout, align 4
  %138 = call i32 @fputs(i32 %136, i32 %137)
  %139 = load i32, i32* @stdout, align 4
  %140 = call i32 @putc(i8 signext 10, i32 %139)
  br label %141

141:                                              ; preds = %126, %42
  br label %142

142:                                              ; preds = %141, %1
  %143 = load %struct.zlib*, %struct.zlib** %2, align 8
  %144 = getelementptr inbounds %struct.zlib, %struct.zlib* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp sge i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = load %struct.zlib*, %struct.zlib** %2, align 8
  %149 = getelementptr inbounds %struct.zlib, %struct.zlib* %148, i32 0, i32 4
  %150 = call i64 @inflateEnd(%struct.TYPE_8__* %149)
  %151 = load %struct.zlib*, %struct.zlib** %2, align 8
  %152 = getelementptr inbounds %struct.zlib, %struct.zlib* %151, i32 0, i32 3
  store i64 %150, i64* %152, align 8
  %153 = load %struct.zlib*, %struct.zlib** %2, align 8
  %154 = getelementptr inbounds %struct.zlib, %struct.zlib* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @Z_OK, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %147
  %159 = load %struct.zlib*, %struct.zlib** %2, align 8
  %160 = call i32 @zlib_message(%struct.zlib* %159, i32 1)
  br label %161

161:                                              ; preds = %158, %147
  br label %162

162:                                              ; preds = %161, %142
  %163 = load %struct.zlib*, %struct.zlib** %2, align 8
  %164 = call i32 @CLEAR(%struct.zlib* byval(%struct.zlib) align 8 %163)
  ret void
}

declare dso_local i32 @type_name(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @zlib_flevel(%struct.zlib*) #1

declare dso_local i32 @uarb_print(i32, i32, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i8* @zlib_rc(%struct.zlib*) #1

declare dso_local i32 @emit_string(i8*, i32) #1

declare dso_local i64 @inflateEnd(%struct.TYPE_8__*) #1

declare dso_local i32 @zlib_message(%struct.zlib*, i32) #1

declare dso_local i32 @CLEAR(%struct.zlib* byval(%struct.zlib) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
